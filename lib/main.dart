import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/multipleChoice.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'question': 'What\'s is your favorite color',
      'answers': [
        {'label': 'Black', 'score': 8},
        {'label': 'Blue', 'score': 1},
        {'label': 'Red', 'score': 3},
        {'label': 'Purple', 'score': 5}
      ]
    },
    {
      'question': 'What\s your favorite animal?',
      'answers': [
        {'label': 'Dog', 'score': 3},
        {'label': 'Cat', 'score': 1},
        {'label': 'Bunny', 'score': 8},
        {'label': 'Scorpion', 'score': 5}
      ]
    },
    {
      'question': 'What\s your favorite drug?',
      'answers': [
        {'label': 'weed', 'score': 1},
        {'label': 'herion', 'score': 3},
        {'label': 'DMT', 'score': 5},
        {'label': 'coffee', 'score': 8}
      ]
    }
  ];

  void _answerSelected(int score) {
    _totalScore += score;

    print(_totalScore);
    if (_index < _questions.length) {
      this.setState(() => _index++);
    }
  }

  void _playAgainPressed() 
  {
      _totalScore = 0;
      this.setState(() => _index=0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: _index < _questions.length
            ? MultipleChoice(
                question: _questions[_index]['question'],
                answers: _questions[_index]['answers'],
                answerSelected: _answerSelected)
            : Result(
                totalScore: _totalScore,
                maxScore: _questions.length * 8,
                playAgainPressed: _playAgainPressed,
              ),
      ),
    );
  }
}
