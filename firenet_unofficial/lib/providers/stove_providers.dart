import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/stove_repository.dart';
import '../data/models/stove.dart';
import '../data/models/stove_state.dart'; // Exports StoveData
import '../data/models/stove_controls.dart';
import 'api_client_provider.dart';
import 'auth_providers.dart';
import 'home_widget_provider.dart';
import '../services/home_widget_service.dart';
import 'rate_limiter_provider.dart';

/// Provides StoveRepository
final stoveRepositoryProvider = Provider<StoveRepository>((ref) {
  return StoveRepository(
    apiClient: ref.watch(rikaApiClientProvider),
    htmlParser: ref.watch(htmlParserServiceProvider),
    rateLimiter: ref.watch(rateLimiterProvider),
  );
});

/// Manages list of discovered stoves
final stoveListProvider =
    StateNotifierProvider<StoveListNotifier, AsyncValue<List<Stove>>>((ref) {
  return StoveListNotifier(
    stoveRepository: ref.watch(stoveRepositoryProvider),
    authState: ref.watch(authStateProvider),
  );
});

/// State notifier for stove list
class StoveListNotifier extends StateNotifier<AsyncValue<List<Stove>>> {
  final StoveRepository _stoveRepository;

  StoveListNotifier({
    required StoveRepository stoveRepository,
    required AuthState authState,
  })  : _stoveRepository = stoveRepository,
        super(const AsyncValue.loading()) {
    if (authState.isAuthenticated) {
      discoverStoves();
    }
  }

  /// Discovers all stoves for the authenticated account
  Future<void> discoverStoves() async {
    state = const AsyncValue.loading();

    final result = await _stoveRepository.discoverStoves();

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (stoves) {
        state = AsyncValue.data(stoves);
      },
    );
  }
}

/// Provides state for a specific stove
///
/// This is a family provider, meaning each stove ID gets its own provider instance
final stoveStateProvider = StateNotifierProvider.family<
    StoveStateNotifier,
    AsyncValue<StoveData>,
    String>((ref, stoveId) {
  return StoveStateNotifier(
    stoveId: stoveId,
    stoveRepository: ref.watch(stoveRepositoryProvider),
    homeWidgetService: ref.watch(homeWidgetServiceProvider),
  );
});

/// State notifier for individual stove state
class StoveStateNotifier extends StateNotifier<AsyncValue<StoveData>> {
  final String _stoveId;
  final StoveRepository _stoveRepository;
  final HomeWidgetService homeWidgetService;

  StoveStateNotifier({
    required String stoveId,
    required StoveRepository stoveRepository,
    required this.homeWidgetService,
  })  : _stoveId = stoveId,
        _stoveRepository = stoveRepository,
        super(const AsyncValue.loading()) {
    refreshState();
  }

  /// Refreshes the stove state from the API
  ///
  /// If [silent] is true, keeps existing data visible during refresh (for polling).
  /// If [silent] is false, shows loading state (for manual refresh).
  Future<void> refreshState({bool silent = false}) async {
    // Only show loading if we don't have data yet or it's a manual refresh
    if (!silent || state.valueOrNull == null) {
      state = const AsyncValue.loading();
    }

    final result = await _stoveRepository.getStoveState(_stoveId);

    result.fold(
      (failure) {
        // Keep old data if silent refresh fails, otherwise show error
        if (silent && state.valueOrNull != null) {
          // Silently keep old data on background refresh error
          return;
        }
        state = AsyncValue.error(failure.message, StackTrace.current);
        // Update widget with error state
        homeWidgetService.updateWidgetError(failure.message);
      },
      (stoveData) {
        state = AsyncValue.data(stoveData);
        // Update widget with new data
        homeWidgetService.updateWidget(stoveData);
      },
    );
  }

  /// Updates stove controls
  ///
  /// CRITICAL: Must send complete controls object
  Future<void> updateControls(StoveControls controls) async {
    final result = await _stoveRepository.updateStoveControls(
      stoveId: _stoveId,
      controls: controls,
    );

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (newState) {
        state = AsyncValue.data(newState);
        // Update widget after controls update
        homeWidgetService.updateWidget(newState);
      },
    );
  }

  /// Convenience method to turn stove on/off
  Future<void> setPower(bool power) async {
    final result = await _stoveRepository.setStovePower(
      stoveId: _stoveId,
      power: power,
    );

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (newState) {
        state = AsyncValue.data(newState);
        // Update widget after power change
        homeWidgetService.updateWidget(newState);
      },
    );
  }

  /// Convenience method to set target temperature (16-30°C)
  Future<void> setTemperature(int temperature) async {
    final result = await _stoveRepository.setTargetTemperature(
      stoveId: _stoveId,
      temperature: temperature,
    );

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (newState) {
        state = AsyncValue.data(newState);
        // Update widget after temperature change
        homeWidgetService.updateWidget(newState);
      },
    );
  }
}
