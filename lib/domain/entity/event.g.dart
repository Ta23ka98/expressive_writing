// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      description: json['description'] as String?,
      wordCount: json['wordCount'] as int?,
      madeBy: json['madeBy'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'description': instance.description,
      'wordCount': instance.wordCount,
      'madeBy': instance.madeBy,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
