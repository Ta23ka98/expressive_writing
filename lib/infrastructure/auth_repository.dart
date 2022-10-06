import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

abstract class BaseAuthRepository {
  Future<void> signUp();
  Future<void> signIn();
  String? getUid();
  Stream<User?> get authStateChange;
  Future<void> signOut();
  Future<void> deleteUser();
}

class AuthRepository implements BaseAuthRepository {
  final Logger _logger;
  final auth = FirebaseAuth.instance;
  AuthRepository({required Logger logger}) : _logger = logger;

  @override
  Future<void> signUp() async {}

  @override
  Future<void> signIn() async {}

  @override
  String? getUid() {}

  @override
  Stream<User?> get authStateChange {
    return auth.authStateChanges();
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<void> deleteUser() async {}
}
