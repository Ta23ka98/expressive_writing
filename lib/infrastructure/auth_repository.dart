import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

abstract class BaseAuthRepository {
  Future<void> signUp({required String email, required String password});
  Future<void> signIn({required String email, required String password});
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
  Future<void> signUp({required String email, required String password}) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }

  @override
  String? getUid() {
    if (auth.currentUser == null) {
      return null;
    } else {
      return auth.currentUser!.uid;
    }
  }

  @override
  Stream<User?> get authStateChange {
    return auth.authStateChanges();
  }

  @override
  Future<void> signOut() async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }

  @override
  Future<void> deleteUser() async {
    try {
      await auth.currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }
}
