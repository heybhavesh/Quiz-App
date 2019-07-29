import 'package:flutter/material.dart';

class ListAnswer extends StatelessWidget {
  final Function selectedAnswer;
final String answersText;
  ListAnswer(this.selectedAnswer,this.answersText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue[50],
        child: Text(answersText),
        onPressed: selectedAnswer,
      ),
    );
  }
}
