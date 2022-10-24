import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/event.dart';

final eventRepositoryProvider = Provider((ref) => EventRepository()..init());

class EventRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _eventsRef;

  void init() {
    _eventsRef = _db.collection("Events");
  }

  // Future<Event> findById({required String id}) async {
  //   final doc = await _eventRef.doc(id).get();
  //   return Event.fromJson(_jsonFromSnapShot(doc));
  // }

  Future<List<Event>> fetchAllEvents({required String id}) async {
    final eventRef = _eventsRef.where("madeBy", isEqualTo: id);
    final snapshot = await eventRef.get();
    return snapshot.docs
        .map((item) => Event.fromJson(
              _jsonFromSnapShot(item),
            ))
        .toList();
  }

  Future<void> addEvent(
      {required String description,
      required int wordCount,
      required DateTime createdAt,
      required String madeBy}) async {
    await _eventsRef.doc().set({
      "description": description,
      "wordCount": wordCount,
      "createdAt": createdAt,
      "madeBy": madeBy,
    });
  }

  Future<void> levelUp() async {}

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
