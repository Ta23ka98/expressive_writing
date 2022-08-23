import 'package:isar/isar.dart';
import 'package:isar_flutter_libs/isar_flutter_libs.dart';
import 'package:isar_generator/isar_generator.dart';
import 'package:path_provider/path_provider.dart';

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
