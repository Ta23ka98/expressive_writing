import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/infrastructure/database/user/user.dart';
import 'package:expressive_writing/infrastructure/service/user_service.dart';

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
