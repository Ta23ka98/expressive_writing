import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/state/firstpage_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstPageNotifier extends StateNotifier<FirstPageState> {
  final BaseAuthRepository _authRepository;

  FirstPageNotifier({required BaseAuthRepository authRepository})
      : _authRepository = authRepository,
        super(FirstPageState(email: "", password: "", userName: ""));

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }
}
