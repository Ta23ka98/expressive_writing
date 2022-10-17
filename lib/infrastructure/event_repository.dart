import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/domain/entity/event.dart';

final eventRepositoryProvider = Provider((ref) => EventRepository()..init());

class EventRepository {
  final _db = FirebaseFirestore.instance;
  late final CollectionReference _eventRef;

  void init() {
    _eventRef = _db.collection("Events");
  }

  // Future<Event> findById({required String id}) async {
  //   final doc = await _eventRef.doc(id).get();
  //   return Event.fromJson(_jsonFromSnapShot(doc));
  // }

  Future<List<Event>> fetchAllEvents({required String id}) async {
    final eventRef = _eventRef.where("madeBy", isEqualTo: id);
    final snapshot = await eventRef.get();
    return snapshot.docs
        .map((item) => Event.fromJson(
              _jsonFromSnapShot(item),
            ))
        .toList();
  }

  Future<void> addEvent({required Event event}) async {
    await _eventRef.doc().set(event.toJson());
  }

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
