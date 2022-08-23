import 'package:isar/isar.dart';
import 'package:isar_flutter_libs/isar_flutter_libs.dart';
import 'package:isar_generator/isar_generator.dart';

// part 'event.g.dart';

@Collection()
class Event {
  late String description;
  late int wordCount;
  late DateTime createdAt;
  late String madeBy;
}
