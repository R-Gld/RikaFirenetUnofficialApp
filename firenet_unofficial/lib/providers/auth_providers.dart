import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/auth_repository.dart';
import '../data/repositories/secure_storage_repository.dart';
import '../data/models/auth_credentials.dart';
import 'api_client_provider.dart';

/// Provides SecureStorageRepository
final secureStorageRepositoryProvider = Provider<SecureStorageRepository>((ref) {
  return SecureStorageRepository();
});

/// Provides AuthRepository
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    apiClient: ref.watch(rikaApiClientProvider),
    storageRepository: ref.watch(secureStorageRepositoryProvider),
  );
});

/// Manages authentication state
final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(
    authRepository: ref.watch(authRepositoryProvider),
  );
});

/// Authentication state
class AuthState {
  final bool isAuthenticated;
  final SessionData? session;
  final bool isLoading;
  final String? errorMessage;

  const AuthState({
    this.isAuthenticated = false,
    this.session,
    this.isLoading = false,
    this.errorMessage,
  });

  AuthState copyWith({
    bool? isAuthenticated,
    SessionData? session,
    bool? isLoading,
    String? errorMessage,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      session: session ?? this.session,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// Manages authentication state and operations
class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthStateNotifier({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState()) {
    _restoreSession();
  }

  /// Attempts to restore session from storage
  Future<void> _restoreSession() async {
    state = state.copyWith(isLoading: true);

    final result = await _authRepository.restoreSession();

    result.fold(
      (failure) {
        state = state.copyWith(
          isAuthenticated: false,
          isLoading: false,
        );
      },
      (session) {
        state = state.copyWith(
          isAuthenticated: session != null,
          session: session,
          isLoading: false,
        );
      },
    );
  }

  /// Authenticates with email and password
  Future<void> authenticate(String email, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    final credentials = AuthCredentials(email: email, password: password);
    final result = await _authRepository.authenticate(credentials);

    result.fold(
      (failure) {
        state = state.copyWith(
          isAuthenticated: false,
          isLoading: false,
          errorMessage: failure.message,
        );
      },
      (session) {
        state = state.copyWith(
          isAuthenticated: true,
          session: session,
          isLoading: false,
          errorMessage: null,
        );
      },
    );
  }

  /// Attempts automatic re-authentication
  Future<void> reauthenticate() async {
    state = state.copyWith(isLoading: true);

    final result = await _authRepository.reauthenticate();

    result.fold(
      (failure) {
        state = state.copyWith(
          isAuthenticated: false,
          isLoading: false,
          errorMessage: failure.message,
        );
      },
      (session) {
        state = state.copyWith(
          isAuthenticated: true,
          session: session,
          isLoading: false,
        );
      },
    );
  }

  /// Logs out
  Future<void> logout() async {
    await _authRepository.logout();
    state = const AuthState();
  }
}
