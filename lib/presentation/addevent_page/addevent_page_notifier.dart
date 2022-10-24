import 'package:expressive_writing/domain/entity/event.dart';
import 'package:expressive_writing/infrastructure/auth_repository.dart';
import 'package:expressive_writing/infrastructure/event_repository.dart';
import 'package:expressive_writing/infrastructure/user_repository.dart';
import 'package:expressive_writing/state/addevent_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final addEventPageNotifierProvider =
    StateNotifierProvider<AddEventPageNotifier, AddEventPageState>(
  (ref) => AddEventPageNotifier(
    eventRepository: ref.read(eventRepositoryProvider),
    authRepository: ref.read(authRepositoryProvider),
    userRepository: ref.read(userRepositoryProvider),
  ),
);

class AddEventPageNotifier extends StateNotifier<AddEventPageState> {
  final BaseAuthRepository _authRepository;
  final EventRepository _eventRepository;
  final UserRepository _userRepository;

  AddEventPageNotifier({
    required EventRepository eventRepository,
    required BaseAuthRepository authRepository,
    required UserRepository userRepository,
  })  : _eventRepository = eventRepository,
        _authRepository = authRepository,
        _userRepository = userRepository,
        super(AddEventPageState.initial());

  Future<void> setDescriptionAndCount(String description) async {
    state = state.copyWith(description: description);
    state = state.copyWith(wordCount: description.length);
  }

  Future<void> addEvent(
      {required String description,
      required int wordCount,
      required DateTime createdAt,
      required String madeBy}) async {
    await _eventRepository.addEvent(
        description: description,
        wordCount: wordCount,
        createdAt: createdAt,
        madeBy: madeBy);
    //await _userRepository.levelUp(id: _authRepository.getUid()!);
    await _userRepository.LevelUp(
        id: _authRepository.getUid()!, wordCount: wordCount);
  }
}

//Future<void> levelUp({required int wordCount}) async {}
