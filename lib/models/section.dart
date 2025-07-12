import 'package:quiz_app_203753/models/question.dart';

class Section {
  final int id;
  final String title;
  final double titleWidth;
  final double titleHeight;
  final List<List<Question>> blocks;

  Section({
    required this.id,
    required this.title,
    required this.titleWidth,
    required this.titleHeight,
    required this.blocks,
  });
}
