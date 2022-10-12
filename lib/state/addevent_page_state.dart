import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'addevent_page_state.freezed.dart';

@freezed
class AddEventPageState with _$AddEventPageState {
  const AddEventPageState._();

  factory AddEventPageState({
    required String description,
    required int wordCount,
    required DateTime createdAt,
    required String madeBy,
  }) = _AddEventPageState;
}
