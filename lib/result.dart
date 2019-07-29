import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;

  result(this.resultScore);

  String get resultMethods {
    var resultmethod;
    if (resultScore < 1) {
      resultmethod = 'Your Score is awesome \n Your Total Score $resultScore';
    } else if (resultScore > 8) {
      resultmethod = 'Your Score is 18+ \n Your Total Score $resultScore ';
    } else {
      resultmethod = 'Your Poor \n Your Total Score $resultScore ';
    }
    return resultmethod;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultMethods,
        style: TextStyle(fontSize: 36),
      ),
    );
  }
}
