import 'package:fl_study/answer.dart';
import 'package:fl_study/question.dart';
import 'package:fl_study/quiz.dart';
import 'package:fl_study/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _questions = [
    {
      'questionText': 'あなたの好きな色は？',
      'anwsers': [
        {'text': '黒', 'score': 10},
        {'text': '赤', 'score': 9},
        {'text': '白', 'score': 0},
      ],
    },
    {
      'questionText': 'あなたの好きな食べ物は？',
      'anwsers': [
        {'text': 'カレー', 'score': 10},
        {'text': 'マグロ', 'score': 9},
        {'text': 'オムライス', 'score': 0},
      ],
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My APP bar')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
