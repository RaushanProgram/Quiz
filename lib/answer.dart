import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function aHndler;
  final String answ;
  Answer(this.aHndler, this.answ);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(7),
      child: RaisedButton(
        color: Colors.lime,
        onPressed: aHndler,
        child: Text(answ),
      ),
    );
  }
}
