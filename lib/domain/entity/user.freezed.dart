// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "userLevel")
  int get userLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "diaryLetters")
  int get diaryLetters => throw _privateConstructorUsedError;
  @JsonKey(name: "diaryNumbers")
  int get diaryNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: "lettersUntilNextLevel")
  int get lettersUntilNextLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "userLevel") int userLevel,
      @JsonKey(name: "diaryLetters") int diaryLetters,
      @JsonKey(name: "diaryNumbers") int diaryNumbers,
      @JsonKey(name: "lettersUntilNextLevel") int lettersUntilNextLevel});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? userLevel = freezed,
    Object? diaryLetters = freezed,
    Object? diaryNumbers = freezed,
    Object? lettersUntilNextLevel = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userLevel: userLevel == freezed
          ? _value.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int,
      diaryLetters: diaryLetters == freezed
          ? _value.diaryLetters
          : diaryLetters // ignore: cast_nullable_to_non_nullable
              as int,
      diaryNumbers: diaryNumbers == freezed
          ? _value.diaryNumbers
          : diaryNumbers // ignore: cast_nullable_to_non_nullable
              as int,
      lettersUntilNextLevel: lettersUntilNextLevel == freezed
          ? _value.lettersUntilNextLevel
          : lettersUntilNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "userLevel") int userLevel,
      @JsonKey(name: "diaryLetters") int diaryLetters,
      @JsonKey(name: "diaryNumbers") int diaryNumbers,
      @JsonKey(name: "lettersUntilNextLevel") int lettersUntilNextLevel});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? name = freezed,
    Object? userLevel = freezed,
    Object? diaryLetters = freezed,
    Object? diaryNumbers = freezed,
    Object? lettersUntilNextLevel = freezed,
  }) {
    return _then(_$_User(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userLevel: userLevel == freezed
          ? _value.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int,
      diaryLetters: diaryLetters == freezed
          ? _value.diaryLetters
          : diaryLetters // ignore: cast_nullable_to_non_nullable
              as int,
      diaryNumbers: diaryNumbers == freezed
          ? _value.diaryNumbers
          : diaryNumbers // ignore: cast_nullable_to_non_nullable
              as int,
      lettersUntilNextLevel: lettersUntilNextLevel == freezed
          ? _value.lettersUntilNextLevel
          : lettersUntilNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  _$_User(
      {@JsonKey(name: "name")
          required this.name,
      @JsonKey(name: "userLevel")
          required this.userLevel,
      @JsonKey(name: "diaryLetters")
          required this.diaryLetters,
      @JsonKey(name: "diaryNumbers")
          required this.diaryNumbers,
      @JsonKey(name: "lettersUntilNextLevel")
          required this.lettersUntilNextLevel})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "userLevel")
  final int userLevel;
  @override
  @JsonKey(name: "diaryLetters")
  final int diaryLetters;
  @override
  @JsonKey(name: "diaryNumbers")
  final int diaryNumbers;
  @override
  @JsonKey(name: "lettersUntilNextLevel")
  final int lettersUntilNextLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(name: $name, userLevel: $userLevel, diaryLetters: $diaryLetters, diaryNumbers: $diaryNumbers, lettersUntilNextLevel: $lettersUntilNextLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('userLevel', userLevel))
      ..add(DiagnosticsProperty('diaryLetters', diaryLetters))
      ..add(DiagnosticsProperty('diaryNumbers', diaryNumbers))
      ..add(
          DiagnosticsProperty('lettersUntilNextLevel', lettersUntilNextLevel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.userLevel, userLevel) &&
            const DeepCollectionEquality()
                .equals(other.diaryLetters, diaryLetters) &&
            const DeepCollectionEquality()
                .equals(other.diaryNumbers, diaryNumbers) &&
            const DeepCollectionEquality()
                .equals(other.lettersUntilNextLevel, lettersUntilNextLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(userLevel),
      const DeepCollectionEquality().hash(diaryLetters),
      const DeepCollectionEquality().hash(diaryNumbers),
      const DeepCollectionEquality().hash(lettersUntilNextLevel));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {@JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "userLevel")
          required final int userLevel,
      @JsonKey(name: "diaryLetters")
          required final int diaryLetters,
      @JsonKey(name: "diaryNumbers")
          required final int diaryNumbers,
      @JsonKey(name: "lettersUntilNextLevel")
          required final int lettersUntilNextLevel}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "userLevel")
  int get userLevel;
  @override
  @JsonKey(name: "diaryLetters")
  int get diaryLetters;
  @override
  @JsonKey(name: "diaryNumbers")
  int get diaryNumbers;
  @override
  @JsonKey(name: "lettersUntilNextLevel")
  int get lettersUntilNextLevel;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
