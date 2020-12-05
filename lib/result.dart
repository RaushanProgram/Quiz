import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int tScore;
  final Function resetHandler;
  Result(this.tScore, this.resetHandler);

  String get resultPhase {
    String textResult;

    if (tScore <= 20) {
      textResult = 'second class';
    } else if (tScore <= 25) {
      textResult = 'first class';
    } else if (tScore <= 30) {
      textResult = 'FCD';
    } else {
      textResult = 'Excellent';
    }
    return textResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase + "\n " + 'Your Score:' + '$tScore',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Restart',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
