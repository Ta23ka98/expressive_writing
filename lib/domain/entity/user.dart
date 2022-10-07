import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  factory User({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "userName") required String userName,
    @JsonKey(name: "userLevel") required int userLevel,
    @JsonKey(name: "diaryLetters") required int diaryLetters,
    @JsonKey(name: "diaryNumbers") required int diaryNumbers,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.initial() => User(
      id: "", userName: "ゲスト", userLevel: 1, diaryLetters: 0, diaryNumbers: 0);
}
