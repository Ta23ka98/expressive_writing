import 'package:expressive_writing/state/userpage_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/user_repository.dart';

final userPageNotifierProvider =
    StateNotifierProvider<UserPageNotifier, UserPageState>((ref) {
  return UserPageNotifier(
      authRepository: ref.read(authRepositoryProvider),
      userRepository: ref.read(userRepositoryProvider));
});

class UserPageNotifier extends StateNotifier<UserPageState> {
  final BaseAuthRepository _authRepository;
  final UserRepository _userRepository;
  UserPageNotifier(
      {required BaseAuthRepository authRepository,
      required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(UserPageState.initial());
}
