import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/user.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _userRef;

  Future<void> create() async {}

  Future<void> update() async {}

  Future<void> delete() async {}

  Map<String, dynamic> _jsonFromSnapshot<T extends DocumentSnapshot>(T json) {
    return {};
  }
}
