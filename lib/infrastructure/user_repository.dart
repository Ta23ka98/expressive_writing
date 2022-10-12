import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/user.dart';

final userRepositoryProvider = Provider((ref) => UserRepository()..init());

class UserRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _userRef;

  void init() {
    _userRef = _db.collection("Users");
  }

  Future<User> findById({required String id}) async {
    final doc = await _userRef.doc(id).get();
    return User.fromJson(_jsonFromSnapshot(doc));
  }

  Future<void> create({required User user}) async {
    await _userRef.doc(user.id).set(user.toJson());
  }

  Future<void> update({required User user}) async {
    await _userRef.doc(user.id).update(user.toJson());
  }

  Future<void> delete({required User user}) async {
    final docRef = _userRef.doc(user.id);
    await docRef.delete();
  }

  Map<String, dynamic> _jsonFromSnapshot<T extends DocumentSnapshot>(T json) {
    return {
      "id": json.id,
      "userName": json["userName"],
      "userLevel": json["userLevel"],
      "diaryLetters": json["diaryLetters"],
      "diaryNumbers": json["diaryNumbers"],
    };
  }
}
