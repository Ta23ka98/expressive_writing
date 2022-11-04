// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userpage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPageState {
  User get user => throw _privateConstructorUsedError;
  Event get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPageStateCopyWith<UserPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPageStateCopyWith<$Res> {
  factory $UserPageStateCopyWith(
          UserPageState value, $Res Function(UserPageState) then) =
      _$UserPageStateCopyWithImpl<$Res>;
  $Res call({User user, Event event});

  $UserCopyWith<$Res> get user;
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$UserPageStateCopyWithImpl<$Res>
    implements $UserPageStateCopyWith<$Res> {
  _$UserPageStateCopyWithImpl(this._value, this._then);

  final UserPageState _value;
  // ignore: unused_field
  final $Res Function(UserPageState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserPageStateCopyWith<$Res>
    implements $UserPageStateCopyWith<$Res> {
  factory _$$_UserPageStateCopyWith(
          _$_UserPageState value, $Res Function(_$_UserPageState) then) =
      __$$_UserPageStateCopyWithImpl<$Res>;
  @override
  $Res call({User user, Event event});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_UserPageStateCopyWithImpl<$Res>
    extends _$UserPageStateCopyWithImpl<$Res>
    implements _$$_UserPageStateCopyWith<$Res> {
  __$$_UserPageStateCopyWithImpl(
      _$_UserPageState _value, $Res Function(_$_UserPageState) _then)
      : super(_value, (v) => _then(v as _$_UserPageState));

  @override
  _$_UserPageState get _value => super._value as _$_UserPageState;

  @override
  $Res call({
    Object? user = freezed,
    Object? event = freezed,
  }) {
    return _then(_$_UserPageState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_UserPageState extends _UserPageState with DiagnosticableTreeMixin {
  _$_UserPageState({required this.user, required this.event}) : super._();

  @override
  final User user;
  @override
  final Event event;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPageState(user: $user, event: $event)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPageState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('event', event));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPageState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_UserPageStateCopyWith<_$_UserPageState> get copyWith =>
      __$$_UserPageStateCopyWithImpl<_$_UserPageState>(this, _$identity);
}

abstract class _UserPageState extends UserPageState {
  factory _UserPageState(
      {required final User user,
      required final Event event}) = _$_UserPageState;
  _UserPageState._() : super._();

  @override
  User get user;
  @override
  Event get event;
  @override
  @JsonKey(ignore: true)
  _$$_UserPageStateCopyWith<_$_UserPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
