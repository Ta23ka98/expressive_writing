import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  factory User({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "userLevel") required int userLevel,
    @JsonKey(name: "diaryLetters") required int diaryLetters,
    @JsonKey(name: "diaryNumbers") required int diaryNumbers,
    @JsonKey(name: "lettersUntilNextLevel") required int lettersUntilNextLevel,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
