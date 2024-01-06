import 'package:hive/hive.dart';

class NoteModel extends HiveObject {
  final String title;
  final String text;
  final String date;
  final int color;

  NoteModel({
    required this.title,
    required this.text,
    required this.date,
    required this.color,
  });
}
