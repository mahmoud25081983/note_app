import 'package:hive/hive.dart';

part 'notemodel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}

//flutter packages pub run build_runner build
