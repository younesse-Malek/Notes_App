
import 'package:hive/hive.dart';
part 'model_note.g.dart';

@HiveType(typeId: 0)
class ModelNote {
  @HiveField(0)
  final String title;
  @HiveField(1)

  final String content;
  @HiveField(2)

  final String date;
  @HiveField(3)

  final int color;

  ModelNote({
    required this.date,
    required this.color,
    required this.content,
    required this.title,
  });
}
