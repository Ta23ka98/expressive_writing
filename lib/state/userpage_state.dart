import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:expressive_writing/domain/entity/user.dart';
import 'package:expressive_writing/domain/entity/event.dart';

part 'userpage_state.freezed.dart';

@freezed
class UserPageState with _$UserPageState {
  const UserPageState._();

  factory UserPageState({
    required User user,
    required Event event,
  }) = _UserPageState;

  factory UserPageState.initial() => UserPageState(
        user: User.initial(),
        event: Event.initial(),
      );
}
