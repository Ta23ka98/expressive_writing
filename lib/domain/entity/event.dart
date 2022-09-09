import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  final String title;
  final int? wordCount;
  final Timestamp? createdAt;

  Event(
      {required this.title, required this.wordCount, required this.createdAt});

  Event.fromJson(Map<String, dynamic> json)
      : this(
          title: json['description'],
          wordCount: json['wordCount'] ?? 0,
          createdAt: json['createdAt'] ?? Timestamp.fromDate(DateTime.now()),
        );

  Map<String, Object?> toJson() {
    // Timestamp? deletedTimestamp;
    // if (deletedAt != null) {
    //   deletedTimestamp = Timestamp.fromDate(deletedAt);
    // }
    return {
      'title': title,
      'createdAt': createdAt, //DartのDateTimeからFirebaseのTimestampへ変換
      //'deletedAt': deletedTimestamp
    };
  }
}
