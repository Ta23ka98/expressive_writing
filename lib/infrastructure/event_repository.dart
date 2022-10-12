import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/event.dart';

class EventRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _eventRef;

  void init() {}

  Future<void> findById() async {}

  Future<void> addEvent() async {}

  Future<void> update() async {}

  Future<void> delete() async {}

  Map<String, dynamic> _jsonFromSnapShot<T extends DocumentSnapshot>(T json) {
    return {
      "description": json["description"],
      "wordCount": json["wordCount"],
      "createdAt": json["createdAt"],
      "madeBy": json["madeBy"],
    };
  }
}
