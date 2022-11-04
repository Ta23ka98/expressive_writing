import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/state/delete_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deletePageNotifierProvider = StateNotifierProvider((ref) {
  return DeletePageNotifier(
    authRepository: ref.read(authRepositoryProvider),
  );
});

class DeletePageNotifier extends StateNotifier<DeletePageState> {
  final BaseAuthRepository _authRepository;

  DeletePageNotifier({
    required BaseAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(DeletePageState(password: ""));

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> deleteUser() async {
    await _authRepository.deleteUser(password: state.password);
  }
}
