// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      userLevel: json['userLevel'] as int,
      diaryLetters: json['diaryLetters'] as int,
      diaryNumbers: json['diaryNumbers'] as int,
      lettersUntilNextLevel: json['lettersUntilNextLevel'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'userLevel': instance.userLevel,
      'diaryLetters': instance.diaryLetters,
      'diaryNumbers': instance.diaryNumbers,
      'lettersUntilNextLevel': instance.lettersUntilNextLevel,
    };
