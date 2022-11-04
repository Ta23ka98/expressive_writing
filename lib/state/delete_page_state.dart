import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'delete_page_state.freezed.dart';

@freezed
class DeletePageState with _$DeletePageState {
  const DeletePageState._();

  factory DeletePageState({
    required String password,
  }) = _DeletePagestate;
}
