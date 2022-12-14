import 'package:expressive_writing/common/logger_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthRepository(logger: ref.read(loggerProvider));
});

final authStateProvider =
    StreamProvider((ref) => ref.watch(authRepositoryProvider).authStateChange);

abstract class BaseAuthRepository {
  Future<void> signUp({required String email, required String password});
  Future<void> signIn({required String email, required String password});
  String? getUid();
  Stream<User?> get authStateChange;
  Future<void> signOut();
  Future<void> deleteUser({required String password});
  Future<void> reAuth({required String password});
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
  Future<void> deleteUser({required String password}) async {
    try {
      await reAuth(password: password);
      await auth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }

  @override
  Future<void> reAuth({required String password}) async {
    try {
      final AuthCredential authCredential = EmailAuthProvider.credential(
          email: auth.currentUser!.email!, password: password);
      auth.currentUser!.reauthenticateWithCredential(authCredential);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.toString());
    }
  }
}
