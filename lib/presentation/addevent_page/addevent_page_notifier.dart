import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/event_repository.dart';
import 'package:expressive_writing/state/addevent_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final addEventPageNotifierProvider = StateNotifierProvider((ref) =>
    AddEventPageNotifier(
        eventRepository: ref.read(eventRepositoryProvider),
        authRepository: ref.read(authRepositoryProvider)));

class AddEventPageNotifier extends StateNotifier<AddEventPageState> {
  final BaseAuthRepository _authRepository;
  final EventRepository _eventRepository;

  AddEventPageNotifier({
    required EventRepository eventRepository,
    required BaseAuthRepository authRepository,
  })  : _eventRepository = eventRepository,
        _authRepository = authRepository,
        super(AddEventPageState.initial());

  Future<void> setDescription(String description) async {
    state = state.copyWith(description: description);
  }

  Future<void> addEvent({required AddEventPageState}) async {}
}
