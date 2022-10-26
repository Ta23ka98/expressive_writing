// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calenderpage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalenderPageState {
  DateTime? get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  Map<DateTime, List<Event>>? get events => throw _privateConstructorUsedError;
  List<Event>? get eventList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalenderPageStateCopyWith<CalenderPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderPageStateCopyWith<$Res> {
  factory $CalenderPageStateCopyWith(
          CalenderPageState value, $Res Function(CalenderPageState) then) =
      _$CalenderPageStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime? focusedDay,
      DateTime? selectedDay,
      Map<DateTime, List<Event>>? events,
      List<Event>? eventList});
}

/// @nodoc
class _$CalenderPageStateCopyWithImpl<$Res>
    implements $CalenderPageStateCopyWith<$Res> {
  _$CalenderPageStateCopyWithImpl(this._value, this._then);

  final CalenderPageState _value;
  // ignore: unused_field
  final $Res Function(CalenderPageState) _then;

  @override
  $Res call({
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? events = freezed,
    Object? eventList = freezed,
  }) {
    return _then(_value.copyWith(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Event>>?,
      eventList: eventList == freezed
          ? _value.eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<Event>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CalenderPageStateCopyWith<$Res>
    implements $CalenderPageStateCopyWith<$Res> {
  factory _$$_CalenderPageStateCopyWith(_$_CalenderPageState value,
          $Res Function(_$_CalenderPageState) then) =
      __$$_CalenderPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? focusedDay,
      DateTime? selectedDay,
      Map<DateTime, List<Event>>? events,
      List<Event>? eventList});
}

/// @nodoc
class __$$_CalenderPageStateCopyWithImpl<$Res>
    extends _$CalenderPageStateCopyWithImpl<$Res>
    implements _$$_CalenderPageStateCopyWith<$Res> {
  __$$_CalenderPageStateCopyWithImpl(
      _$_CalenderPageState _value, $Res Function(_$_CalenderPageState) _then)
      : super(_value, (v) => _then(v as _$_CalenderPageState));

  @override
  _$_CalenderPageState get _value => super._value as _$_CalenderPageState;

  @override
  $Res call({
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? events = freezed,
    Object? eventList = freezed,
  }) {
    return _then(_$_CalenderPageState(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Event>>?,
      eventList: eventList == freezed
          ? _value._eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<Event>?,
    ));
  }
}

/// @nodoc

class _$_CalenderPageState extends _CalenderPageState {
  _$_CalenderPageState(
      {required this.focusedDay,
      required this.selectedDay,
      required final Map<DateTime, List<Event>>? events,
      required final List<Event>? eventList})
      : _events = events,
        _eventList = eventList,
        super._();

  @override
  final DateTime? focusedDay;
  @override
  final DateTime? selectedDay;
  final Map<DateTime, List<Event>>? _events;
  @override
  Map<DateTime, List<Event>>? get events {
    final value = _events;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Event>? _eventList;
  @override
  List<Event>? get eventList {
    final value = _eventList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CalenderPageState(focusedDay: $focusedDay, selectedDay: $selectedDay, events: $events, eventList: $eventList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalenderPageState &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._eventList, _eventList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_eventList));

  @JsonKey(ignore: true)
  @override
  _$$_CalenderPageStateCopyWith<_$_CalenderPageState> get copyWith =>
      __$$_CalenderPageStateCopyWithImpl<_$_CalenderPageState>(
          this, _$identity);
}

abstract class _CalenderPageState extends CalenderPageState {
  factory _CalenderPageState(
      {required final DateTime? focusedDay,
      required final DateTime? selectedDay,
      required final Map<DateTime, List<Event>>? events,
      required final List<Event>? eventList}) = _$_CalenderPageState;
  _CalenderPageState._() : super._();

  @override
  DateTime? get focusedDay;
  @override
  DateTime? get selectedDay;
  @override
  Map<DateTime, List<Event>>? get events;
  @override
  List<Event>? get eventList;
  @override
  @JsonKey(ignore: true)
  _$$_CalenderPageStateCopyWith<_$_CalenderPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
