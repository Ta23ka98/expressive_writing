// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeletePageState {
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeletePageStateCopyWith<DeletePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePageStateCopyWith<$Res> {
  factory $DeletePageStateCopyWith(
          DeletePageState value, $Res Function(DeletePageState) then) =
      _$DeletePageStateCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$DeletePageStateCopyWithImpl<$Res>
    implements $DeletePageStateCopyWith<$Res> {
  _$DeletePageStateCopyWithImpl(this._value, this._then);

  final DeletePageState _value;
  // ignore: unused_field
  final $Res Function(DeletePageState) _then;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeletePagestateCopyWith<$Res>
    implements $DeletePageStateCopyWith<$Res> {
  factory _$$_DeletePagestateCopyWith(
          _$_DeletePagestate value, $Res Function(_$_DeletePagestate) then) =
      __$$_DeletePagestateCopyWithImpl<$Res>;
  @override
  $Res call({String password});
}

/// @nodoc
class __$$_DeletePagestateCopyWithImpl<$Res>
    extends _$DeletePageStateCopyWithImpl<$Res>
    implements _$$_DeletePagestateCopyWith<$Res> {
  __$$_DeletePagestateCopyWithImpl(
      _$_DeletePagestate _value, $Res Function(_$_DeletePagestate) _then)
      : super(_value, (v) => _then(v as _$_DeletePagestate));

  @override
  _$_DeletePagestate get _value => super._value as _$_DeletePagestate;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_DeletePagestate(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeletePagestate extends _DeletePagestate with DiagnosticableTreeMixin {
  _$_DeletePagestate({required this.password}) : super._();

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeletePageState(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeletePageState'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePagestate &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_DeletePagestateCopyWith<_$_DeletePagestate> get copyWith =>
      __$$_DeletePagestateCopyWithImpl<_$_DeletePagestate>(this, _$identity);
}

abstract class _DeletePagestate extends DeletePageState {
  factory _DeletePagestate({required final String password}) =
      _$_DeletePagestate;
  _DeletePagestate._() : super._();

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_DeletePagestateCopyWith<_$_DeletePagestate> get copyWith =>
      throw _privateConstructorUsedError;
}
