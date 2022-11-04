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
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "userLevel")
  int get userLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "diaryLetters")
  int get diaryLetters => throw _privateConstructorUsedError;
  @JsonKey(name: "diaryNumbers")
  int get diaryNumbers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userName") String userName,
      @JsonKey(name: "userLevel") int userLevel,
      @JsonKey(name: "diaryLetters") int diaryLetters,
      @JsonKey(name: "diaryNumbers") int diaryNumbers});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userLevel = freezed,
    Object? diaryLetters = freezed,
    Object? diaryNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userName") String userName,
      @JsonKey(name: "userLevel") int userLevel,
      @JsonKey(name: "diaryLetters") int diaryLetters,
      @JsonKey(name: "diaryNumbers") int diaryNumbers});
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
    Object? id = freezed,
    Object? userName = freezed,
    Object? userLevel = freezed,
    Object? diaryLetters = freezed,
    Object? diaryNumbers = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  _$_User(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userName") required this.userName,
      @JsonKey(name: "userLevel") required this.userLevel,
      @JsonKey(name: "diaryLetters") required this.diaryLetters,
      @JsonKey(name: "diaryNumbers") required this.diaryNumbers})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "userName")
  final String userName;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, userName: $userName, userLevel: $userLevel, diaryLetters: $diaryLetters, diaryNumbers: $diaryNumbers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('userLevel', userLevel))
      ..add(DiagnosticsProperty('diaryLetters', diaryLetters))
      ..add(DiagnosticsProperty('diaryNumbers', diaryNumbers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userLevel, userLevel) &&
            const DeepCollectionEquality()
                .equals(other.diaryLetters, diaryLetters) &&
            const DeepCollectionEquality()
                .equals(other.diaryNumbers, diaryNumbers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userLevel),
      const DeepCollectionEquality().hash(diaryLetters),
      const DeepCollectionEquality().hash(diaryNumbers));

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
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "userName") required final String userName,
          @JsonKey(name: "userLevel") required final int userLevel,
          @JsonKey(name: "diaryLetters") required final int diaryLetters,
          @JsonKey(name: "diaryNumbers") required final int diaryNumbers}) =
      _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "userName")
  String get userName;
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
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
