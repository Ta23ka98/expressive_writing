import 'package:isar/isar.dart';

part 'event.g.dart';

@Collection()
class Event {
  @Id()
  int? id;
  late String description;
  late int wordCount;
  late DateTime createdAt;
  late String madeBy;
}
