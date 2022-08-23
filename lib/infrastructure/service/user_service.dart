import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:expressive_writing/infrastructure/database/user/user.dart';

// final ProviderFamily<UserService, Isar> userServiceProvider =
//     Provider.family<UserService, Isar>((_, isar) => UserService(isar: isar));

class UserService {
  UserService({required this.isar});

  final Isar isar;

  Future<User?> findUser() async {
    return isar.users.where().findFirst();
  }

  Future<int> addUser({required String name}) async {
    final user = User()
      ..name = name
      ..level = 1
      ..diaryNumbers = 0
      ..diaryLetters = 0
      ..lettersUntilNextLevel = 5;
    return isar.writeTxn((isar) => isar.users.put(user));
  }
}
