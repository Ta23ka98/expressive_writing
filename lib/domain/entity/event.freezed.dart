// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "wordCount")
  int? get wordCount => throw _privateConstructorUsedError;
  @JsonKey(name: "madeBy")
  String? get madeBy => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "wordCount") int? wordCount,
      @JsonKey(name: "madeBy") String? madeBy,
      @TimestampConverter() @JsonKey(name: "createdAt") DateTime? createdAt});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? wordCount = freezed,
    Object? madeBy = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: wordCount == freezed
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      madeBy: madeBy == freezed
          ? _value.madeBy
          : madeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "wordCount") int? wordCount,
      @JsonKey(name: "madeBy") String? madeBy,
      @TimestampConverter() @JsonKey(name: "createdAt") DateTime? createdAt});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, (v) => _then(v as _$_Event));

  @override
  _$_Event get _value => super._value as _$_Event;

  @override
  $Res call({
    Object? description = freezed,
    Object? wordCount = freezed,
    Object? madeBy = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Event(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: wordCount == freezed
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      madeBy: madeBy == freezed
          ? _value.madeBy
          : madeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event extends _Event with DiagnosticableTreeMixin {
  _$_Event(
      {@JsonKey(name: "description") this.description,
      @JsonKey(name: "wordCount") this.wordCount,
      @JsonKey(name: "madeBy") this.madeBy,
      @TimestampConverter() @JsonKey(name: "createdAt") this.createdAt})
      : super._();

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "wordCount")
  final int? wordCount;
  @override
  @JsonKey(name: "madeBy")
  final String? madeBy;
  @override
  @TimestampConverter()
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event(description: $description, wordCount: $wordCount, madeBy: $madeBy, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Event'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('wordCount', wordCount))
      ..add(DiagnosticsProperty('madeBy', madeBy))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.wordCount, wordCount) &&
            const DeepCollectionEquality().equals(other.madeBy, madeBy) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(wordCount),
      const DeepCollectionEquality().hash(madeBy),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event extends Event {
  factory _Event(
      {@JsonKey(name: "description")
          final String? description,
      @JsonKey(name: "wordCount")
          final int? wordCount,
      @JsonKey(name: "madeBy")
          final String? madeBy,
      @TimestampConverter()
      @JsonKey(name: "createdAt")
          final DateTime? createdAt}) = _$_Event;
  _Event._() : super._();

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "wordCount")
  int? get wordCount;
  @override
  @JsonKey(name: "madeBy")
  String? get madeBy;
  @override
  @TimestampConverter()
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
