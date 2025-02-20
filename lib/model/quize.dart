import 'package:smartquize/model/question.dart';

class Quize {
  final String id;
  final String title;
  final int timeLimit;
  final List<Question> questions;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Quize({
    required this.id,
    required this.title,
    required this.timeLimit,
    required this.questions,
    this.createdAt,
    this.updatedAt,
  });
}
