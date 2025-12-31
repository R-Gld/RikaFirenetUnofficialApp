import 'package:dartz/dartz.dart';
import '../datasources/rika_api_client.dart';
import '../datasources/html_parser_service.dart';
import '../models/stove.dart';
import '../models/stove_state.dart';
import '../models/stove_controls.dart';
import '../../core/constants/api_constants.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/network/rate_limiter.dart';

/// Repository for stove operations
///
/// Handles all stove-related operations including discovery, state management,
/// and control updates with confirmation retry logic
class StoveRepository {
  final RikaApiClient _apiClient;
  final HtmlParserService _htmlParser;
  final RateLimiter _rateLimiter;

  StoveRepository({
    required RikaApiClient apiClient,
    required HtmlParserService htmlParser,
    required RateLimiter rateLimiter,
  })  : _apiClient = apiClient,
        _htmlParser = htmlParser,
        _rateLimiter = rateLimiter;

  /// Discovers all stoves for the authenticated account
  ///
  /// Returns list of [Stove] or [Failure] on error
  Future<Either<Failure, List<Stove>>> discoverStoves() async {
    try {
      return await _rateLimiter.execute(
        'getStoveSummaryHtml',
        () async {
          final html = await _apiClient.getStoveSummaryHtml();
          final stoves = _htmlParser.parseStoveList(html);
          return Right(stoves);
        },
      );
    } on SessionExpiredException {
      return const Left(AuthFailure('Session expired'));
    } on RateLimitException catch (e) {
      return Left(NetworkFailure('Rate limited: ${e.message}'));
    } on ParsingException catch (e) {
      return Left(ServerFailure('Failed to parse stoves: ${e.message}'));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to discover stoves: $e'));
    }
  }

  /// Gets current state of a stove
  ///
  /// Returns [StoveData] or [Failure] on error
  Future<Either<Failure, StoveData>> getStoveState(String stoveId) async {
    try {
      return await _rateLimiter.execute(
        'getStoveStatus',
        () async {
          final json = await _apiClient.getStoveStatus(stoveId);
          final state = StoveData.fromJson(json);
          return Right(state);
        },
      );
    } on SessionExpiredException {
      return const Left(AuthFailure('Session expired'));
    } on RateLimitException {
      // For polling, don't treat rate limit as error - just skip this poll
      return const Left(NetworkFailure('Rate limited'));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to get stove state: $e'));
    }
  }

  /// Updates stove controls with confirmation polling
  ///
  /// CRITICAL: Must send complete controls object, not partial updates.
  /// After sending controls, polls for confirmation up to 10 times with 2s delays.
  ///
  /// Returns updated [StoveData] or [Failure] on error/timeout
  Future<Either<Failure, StoveData>> updateStoveControls({
    required String stoveId,
    required StoveControls controls,
  }) async {
    try {
      // Validate controls before sending
      if (!controls.isValid) {
        return const Left(ValidationFailure('Invalid control values'));
      }

      return await _rateLimiter.execute(
        'setStoveControls',
        () async {
          // Send control update
          final success = await _apiClient.setStoveControls(
            stoveId,
            controls.toJson(),
          );

          if (!success) {
            return const Left(ServerFailure('Control update rejected'));
          }

          // Poll for confirmation
          for (int i = 0; i < ApiConstants.maxControlUpdateRetries; i++) {
            await Future.delayed(ApiConstants.controlUpdateRetryDelay);

            final stateResult = await getStoveState(stoveId);
            if (stateResult.isRight()) {
              // Successfully confirmed - return new state
              return stateResult;
            }
          }

          // Timeout waiting for confirmation
          return const Left(ServerFailure('Control update not confirmed'));
        },
      );
    } on SessionExpiredException {
      return const Left(AuthFailure('Session expired'));
    } on RateLimitException catch (e) {
      final waitSeconds = (e.waitTimeMs / 1000).ceil();
      return Left(NetworkFailure('Rate limited: Please wait $waitSeconds seconds'));
    } on ControlUpdateException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to update controls: $e'));
    }
  }

  /// Convenience method to turn stove on/off
  ///
  /// Gets current state, modifies only the power setting, then updates
  Future<Either<Failure, StoveData>> setStovePower({
    required String stoveId,
    required bool power,
  }) async {
    // First get current state
    final currentStateResult = await getStoveState(stoveId);

    return await currentStateResult.fold(
      (failure) => Left(failure),
      (currentState) async {
        // Modify only the power setting
        final updatedControls = currentState.controls.copyWith(onOff: power);
        return await updateStoveControls(
          stoveId: stoveId,
          controls: updatedControls,
        );
      },
    );
  }

  /// Convenience method to set target temperature
  ///
  /// Validates temperature range (16-30°C) and that stove is on
  Future<Either<Failure, StoveData>> setTargetTemperature({
    required String stoveId,
    required int temperature,
  }) async {
    // Validate range
    if (temperature < 16 || temperature > 30) {
      return const Left(ValidationFailure('Temperature must be 16-30°C'));
    }

    final currentStateResult = await getStoveState(stoveId);

    return await currentStateResult.fold(
      (failure) => Left(failure),
      (currentState) async {
        // Check if stove is on
        if (!currentState.isOn) {
          return const Left(
            ValidationFailure('Cannot set temperature while stove is off'),
          );
        }

        final updatedControls = currentState.controls.copyWith(
          targetTemperature: temperature.toString(),
        );

        return await updateStoveControls(
          stoveId: stoveId,
          controls: updatedControls,
        );
      },
    );
  }
}
