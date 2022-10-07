import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:expressive_writing/common/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const Event._();

  factory Event({
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "wordCount") int? wordCount,
    @JsonKey(name: "madeBy") String? madeBy,
    @TimestampConverter() @JsonKey(name: "createdAt") DateTime? createdAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  factory Event.initial() => Event();
}
