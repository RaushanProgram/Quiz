import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qindex;
  final Function qans;

  Quiz(this.questions, this.qindex, this.qans);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qindex]['questionText']),
        ...(questions[qindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => qans(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
