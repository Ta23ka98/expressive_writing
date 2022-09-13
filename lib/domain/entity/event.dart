import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const Event._();

  factory Event({
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "wordCount") required int wordCount,
    @JsonKey(name: "madeBy") required String madeBy,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class Event {
//   final String title;
//   final int? wordCount;
//   final Timestamp? createdAt;
//
//   Event(
//       {required this.title, required this.wordCount, required this.createdAt});
//
//   Event.fromJson(Map<String, dynamic> json)
//       : this(
//           title: json['description'],
//           wordCount: json['wordCount'] ?? 0,
//           createdAt: json['createdAt'] ?? Timestamp.fromDate(DateTime.now()),
//         );
//
//   Map<String, Object?> toJson() {
//     return {
//       'title': title,
//       'createdAt': createdAt, //DartのDateTimeからFirebaseのTimestampへ変換
//       //'deletedAt': deletedTimestamp
//     };
//   }
// }

//
// class Event {
//   final String title;
//   const Event({required this.title});
//   @override
//   String toString() => title;
// }
