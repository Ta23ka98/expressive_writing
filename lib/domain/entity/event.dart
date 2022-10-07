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
