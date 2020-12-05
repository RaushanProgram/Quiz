import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qHandler;
  Question(this.qHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        qHandler,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
