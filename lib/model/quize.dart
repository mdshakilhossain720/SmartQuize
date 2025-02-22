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

  factory Quize.fromMap(String id, Map<String, dynamic> map) {
    return Quize(
      id: id,
      title: map['title'] ?? '',
      timeLimit: map['timeLimit'] ?? 0,
      questions:((map['questions'] ?? []) as List).map((e) => Question.fromMap(e)).toList(),
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'timeLimit': timeLimit,
      'questions': questions.map((e) => e.toMap()).toList(),
      
      'updatedAt': DateTime.now(),
    };
  }

  Quize copyWith({
    String? id,
    String? title,
    int? timeLimit,
    List<Question>? questions,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Quize(
      id: id ?? this.id,
      title: title ?? this.title,
      timeLimit: timeLimit ?? this.timeLimit,
      questions: questions ?? this.questions,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

   
}
