import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/user_repository.dart';
import 'package:expressive_writing/state/firstpage_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firstPageNotifierProvider = StateNotifierProvider((ref) {
  return FirstPageNotifier(
    authRepository: ref.read(authRepositoryProvider),
    userRepository: ref.read(userRepositoryProvider),
  );
});

class FirstPageNotifier extends StateNotifier<FirstPageState> {
  final BaseAuthRepository _authRepository;
  final UserRepository _userRepository;

  FirstPageNotifier(
      {required BaseAuthRepository authRepository,
      required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(FirstPageState(email: "", password: "", userName: "ゲスト"));

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> signUp() async {
    try {
      await _authRepository.signUp(
          email: state.email, password: state.password);
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signIn() async {
    try {
      await _authRepository.signIn(
          email: state.email, password: state.password);
    } catch (e) {
      throw e.toString();
    }
  }
}
