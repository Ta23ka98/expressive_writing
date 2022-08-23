import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  @Id()
  int? id;

  late String name;
  late int level;
  late int diaryNumbers;
  late int diaryLetters;
  late int lettersUntilNextLevel;
}
