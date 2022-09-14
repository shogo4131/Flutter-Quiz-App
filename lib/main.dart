import 'package:fl_study/answer.dart';
import 'package:fl_study/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'あなたの好きな色は？',
      'anwsers': ['黒', '赤', '白'],
    },
    {
      'questionText': 'あなたの好きな食べ物は？',
      'anwsers': ['カレー', 'マグロ', ' オムライス'],
    },
    {
      'questionText': 'あなたの好きな食べ物は？',
      'anwsers': ['カレー', 'マグロ', ' オムライス'],
    }
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My APP bar')),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['anwsers'] as List<String>)
                .map((answser) => Answer(_answerQuestion, answser))
                .toList()
          ],
        ),
      ),
    );
  }
}
