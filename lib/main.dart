import 'package:flutter/material.dart';
import 'package:quizz/quiz.dart';
import 'package:quizz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var qindex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      qindex = 0;
      totalScore = 0;
    });
  }

  void qans(int score) {
    totalScore = totalScore + score;
    setState(() {
      qindex = qindex + 1;
    });
  }

  var questions = [
    {
      'questionText': 'Whats your favorite color',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 8},
        {'text': 'Blue', 'score': 12},
        {'text': 'Green', 'score': 5},
      ]
    },
    {
      'questionText': 'Whats your favorite Animal',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Camel', 'score': 12},
        {'text': 'Dog', 'score': 5}
      ]
    },
    {
      'questionText': 'Whats your favorite subjects',
      'answer': [
        {'text': 'Java', 'score': 10},
        {'text': 'Flutter', 'score': 8},
        {'text': 'Dart', 'score': 12},
        {'text': 'Sql', 'score': 5},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz  App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: qindex < questions.length
            ? Quiz(questions, qindex, qans)
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
