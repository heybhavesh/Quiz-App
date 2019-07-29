import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = 0;
  var tscore=0;

  void answerQuestion(int scores) {
    tscore += scores;
    setState(() {
      questions = questions + 1;
    });
    //print(questions);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'Hows ur Day ',
        'answerText': [
          {'text': 'ok', 'score': 10},
          {'text': 'Fine', 'score': 20},
          {'text': 'Excellent', 'score': 30},
          {'text': 'Fabulous', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s ur Fav Colour ',
        'answerText': [
          {'text': 'white', 'score': 10},
          {'text': 'Green', 'score': 20},
          {'text': 'Yellow', 'score': 30},
          {'text': 'Pink', 'score': 1},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('hello'),
          ),
          body: questions < question.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questions,
                  questions: question,
                )
              : result(tscore)),
    );
  }
}
