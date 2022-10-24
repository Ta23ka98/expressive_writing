import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/user.dart';

final userRepositoryProvider = Provider((ref) => UserRepository()..init());

class UserRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _usersRef;

  void init() {
    _usersRef = _db.collection("Users");
  }

  Future<User> findById({required String id}) async {
    final doc = await _usersRef.doc(id).get();
    return User.fromJson(_jsonFromSnapshot(doc));
  }

  Future<void> create({required User user}) async {
    await _usersRef.doc(user.id).set(user.toJson());
  }

  Future<void> update({required User user}) async {
    await _usersRef.doc(user.id).update(user.toJson());
  }

  Future<void> delete({required User user}) async {
    final docRef = _usersRef.doc(user.id);
    await docRef.delete();
  }

  Future<void> levelUp({required String id}) async {
    final ref = _usersRef.doc(id);
    await _usersRef.doc(id).update({});
  }

  Future<void> LevelUp({required String id, required int wordCount}) async {
    final usersRef = FirebaseFirestore.instance.collection('Users');
    usersRef.doc(id).get().then((DocumentSnapshot snapshot) {
      final int newDiaryNumbers = snapshot.get("diaryNumbers") + 1;
      final int diaryLetters = snapshot.get("diaryLetters");
      final int updatedDiaryLetters = diaryLetters + wordCount;
      for (int L = 100; L > 0; L--) {
        final int minimum = 5 * (L - 1) * (L - 1);
        final int maximum = (5 * L * L) + 1;
        final int newLevel = L;
        if (minimum <= diaryLetters && diaryLetters < maximum) {
          break;
        } else {}
        final int newLettersUntilNextLevel = maximum - updatedDiaryLetters;
        usersRef.doc(id).update({
          "userLevel": newLevel,
          "lettersUntilNextLevel": newLettersUntilNextLevel,
          "diaryNumbers": newDiaryNumbers,
          "diaryLetters": updatedDiaryLetters,
        });
      }
    });
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
