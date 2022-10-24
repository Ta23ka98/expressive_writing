import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/event_repository.dart';
import 'package:expressive_writing/infrastructure/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/event.dart';

final calenderPageNotifierProvider = StateNotifierProvider((ref) =>
    CalenderPageNotifier(
        authRepository: ref.read(authRepositoryProvider),
        eventRepository: ref.watch(eventRepositoryProvider),
        userRepository: ref.read(userRepositoryProvider)));

class CalenderPageNotifier extends StateNotifier<List<Event>?> {
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
        super(const []);

  Future<List<Event>?> fetchAll() async {
    final uid = _authRepository.getUid();
    await _eventRepository.fetchAllEvents(id: uid!);
  }
}
