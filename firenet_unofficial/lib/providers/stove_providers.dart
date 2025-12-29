import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/stove_repository.dart';
import '../data/models/stove.dart';
import '../data/models/stove_state.dart';
import '../data/models/stove_controls.dart';
import 'api_client_provider.dart';
import 'auth_providers.dart';

/// Provides StoveRepository
final stoveRepositoryProvider = Provider<StoveRepository>((ref) {
  return StoveRepository(
    apiClient: ref.watch(rikaApiClientProvider),
    htmlParser: ref.watch(htmlParserServiceProvider),
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
    AsyncValue<StoveState>,
    String>((ref, stoveId) {
  return StoveStateNotifier(
    stoveId: stoveId,
    stoveRepository: ref.watch(stoveRepositoryProvider),
  );
});

/// State notifier for individual stove state
class StoveStateNotifier extends StateNotifier<AsyncValue<StoveState>> {
  final String _stoveId;
  final StoveRepository _stoveRepository;

  StoveStateNotifier({
    required String stoveId,
    required StoveRepository stoveRepository,
  })  : _stoveId = stoveId,
        _stoveRepository = stoveRepository,
        super(const AsyncValue.loading()) {
    refreshState();
  }

  /// Refreshes the stove state from the API
  Future<void> refreshState() async {
    state = const AsyncValue.loading();

    final result = await _stoveRepository.getStoveState(_stoveId);

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (stoveState) {
        state = AsyncValue.data(stoveState);
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
      },
    );
  }
}
