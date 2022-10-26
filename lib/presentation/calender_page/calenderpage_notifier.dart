import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/event_repository.dart';
import 'package:expressive_writing/infrastructure/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expressive_writing/state/calenderpage_state.dart';

import '../../domain/entity/event.dart';

final calenderPageNotifierProvider =
    StateNotifierProvider<CalenderPageNotifier, CalenderPageState>((ref) =>
        CalenderPageNotifier(
            authRepository: ref.read(authRepositoryProvider),
            eventRepository: ref.watch(eventRepositoryProvider),
            userRepository: ref.read(userRepositoryProvider)));

class CalenderPageNotifier extends StateNotifier<CalenderPageState> {
  final BaseAuthRepository _authRepository;
  final EventRepository _eventRepository;
  final UserRepository _userRepository;

  CalenderPageNotifier(
      {required BaseAuthRepository authRepository,
      required EventRepository eventRepository,
      required UserRepository userRepository})
      : _authRepository = authRepository,
        _eventRepository = eventRepository,
        _userRepository = userRepository,
        super(
          CalenderPageState(
              focusedDay: DateTime.now(),
              selectedDay: null,
              events: null,
              eventList: null),
        );

  Future<void> init() async {
    final events =
        await _eventRepository.fetchAllEvents(id: _authRepository.getUid()!);
    Map<DateTime, List<Event>>? eventsMap = {};
    //if (events != null) {
    for (Event event in events!) {
      final String description = event.description!;
      final createdAt = DateTime.utc(
        event.createdAt!.year,
        event.createdAt!.month,
        event.createdAt!.day,
      );
      //final DateTime createdAt = event.createdAt!;
      if (eventsMap[createdAt] == null) {
        eventsMap[createdAt] = [Event(description: description)];
      } else {
        eventsMap[createdAt]!.add(Event(description: description));
      }
      state = state.copyWith(events: eventsMap);
    }
  }

  void onDaySelected(
      {required DateTime selectedDay,
      required DateTime focusedDay,
      required List<Event> events}) {
    state = state.copyWith(
        selectedDay: selectedDay, focusedDay: focusedDay, eventList: events);
  }

  List<Event> eventLoader(day) {
    return state.events?[day] ?? [];
  }
}
