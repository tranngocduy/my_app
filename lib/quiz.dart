import 'package:flutter/material.dart';
import 'package:my_app/answer.dart';
import 'package:my_app/question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
            questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answers) {
          return Answer(answerText: answers['text'] as String, onPressed: () => answerQuestion(answers['score']));
        }).toList(),
      ],
    );
  }
}
