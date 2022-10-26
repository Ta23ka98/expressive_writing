// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addevent_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEventPageState {
  String get description => throw _privateConstructorUsedError;
  int get wordCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get madeBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEventPageStateCopyWith<AddEventPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEventPageStateCopyWith<$Res> {
  factory $AddEventPageStateCopyWith(
          AddEventPageState value, $Res Function(AddEventPageState) then) =
      _$AddEventPageStateCopyWithImpl<$Res>;
  $Res call(
      {String description, int wordCount, DateTime createdAt, String madeBy});
}

/// @nodoc
class _$AddEventPageStateCopyWithImpl<$Res>
    implements $AddEventPageStateCopyWith<$Res> {
  _$AddEventPageStateCopyWithImpl(this._value, this._then);

  final AddEventPageState _value;
  // ignore: unused_field
  final $Res Function(AddEventPageState) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? wordCount = freezed,
    Object? createdAt = freezed,
    Object? madeBy = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: wordCount == freezed
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      madeBy: madeBy == freezed
          ? _value.madeBy
          : madeBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddEventPageStateCopyWith<$Res>
    implements $AddEventPageStateCopyWith<$Res> {
  factory _$$_AddEventPageStateCopyWith(_$_AddEventPageState value,
          $Res Function(_$_AddEventPageState) then) =
      __$$_AddEventPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description, int wordCount, DateTime createdAt, String madeBy});
}

/// @nodoc
class __$$_AddEventPageStateCopyWithImpl<$Res>
    extends _$AddEventPageStateCopyWithImpl<$Res>
    implements _$$_AddEventPageStateCopyWith<$Res> {
  __$$_AddEventPageStateCopyWithImpl(
      _$_AddEventPageState _value, $Res Function(_$_AddEventPageState) _then)
      : super(_value, (v) => _then(v as _$_AddEventPageState));

  @override
  _$_AddEventPageState get _value => super._value as _$_AddEventPageState;

  @override
  $Res call({
    Object? description = freezed,
    Object? wordCount = freezed,
    Object? createdAt = freezed,
    Object? madeBy = freezed,
  }) {
    return _then(_$_AddEventPageState(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: wordCount == freezed
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      madeBy: madeBy == freezed
          ? _value.madeBy
          : madeBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddEventPageState extends _AddEventPageState {
  _$_AddEventPageState(
      {required this.description,
      required this.wordCount,
      required this.createdAt,
      required this.madeBy})
      : super._();

  @override
  final String description;
  @override
  final int wordCount;
  @override
  final DateTime createdAt;
  @override
  final String madeBy;

  @override
  String toString() {
    return 'AddEventPageState(description: $description, wordCount: $wordCount, createdAt: $createdAt, madeBy: $madeBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEventPageState &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.wordCount, wordCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.madeBy, madeBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(wordCount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(madeBy));

  @JsonKey(ignore: true)
  @override
  _$$_AddEventPageStateCopyWith<_$_AddEventPageState> get copyWith =>
      __$$_AddEventPageStateCopyWithImpl<_$_AddEventPageState>(
          this, _$identity);
}

abstract class _AddEventPageState extends AddEventPageState {
  factory _AddEventPageState(
      {required final String description,
      required final int wordCount,
      required final DateTime createdAt,
      required final String madeBy}) = _$_AddEventPageState;
  _AddEventPageState._() : super._();

  @override
  String get description;
  @override
  int get wordCount;
  @override
  DateTime get createdAt;
  @override
  String get madeBy;
  @override
  @JsonKey(ignore: true)
  _$$_AddEventPageStateCopyWith<_$_AddEventPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
