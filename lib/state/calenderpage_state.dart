import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:expressive_writing/domain/entity/event.dart';

part 'calenderpage_state.freezed.dart';

@freezed
class CalenderPageState with _$CalenderPageState {
  const CalenderPageState._();

  factory CalenderPageState({
    required DateTime? focusedDay,
    required DateTime? selectedDay,
    required Map<DateTime, List<Event>>? events,
    required List<Event>? eventList,
  }) = _CalenderPageState;
}
