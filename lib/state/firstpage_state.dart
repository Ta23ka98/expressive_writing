import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'firstpage_state.freezed.dart';

@freezed
class FirstPageState with _$FirstPageState {
  const FirstPageState._();

  factory FirstPageState({
    required String email,
    required String password,
    required String userName,
  }) = _FirstPageState;
}
