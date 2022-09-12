import 'package:fl_study/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = ['あなたの好きな色は？', 'あなたの好きな食べ物は？'];

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My APP bar')),
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            child: Text('Anwser 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Anwser 2'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Anwser 3'),
            onPressed: _answerQuestion,
          ),
        ]),
      ),
    );
  }
}
