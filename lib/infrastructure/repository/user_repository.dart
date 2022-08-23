import 'package:expressive_writing/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/infrastructure/database/user/user.dart';
import 'package:expressive_writing/infrastructure/service/user_service.dart';

final Provider<UserRepository> userRepositoryProvider =
    Provider<UserRepository>(
        (ref) => UserRepository(service: ref.watch(userServiceProvider(isar))));

class UserRepository {
  UserRepository({required this.service});

  final UserService service;

  Future<User?> findUser() => service.findUser();

  Future<void> initUser() async {
    final user = await findUser();
    if (user == null) {
      await service.addUser(name: "anonymous");
    }
  }
}
