import 'package:flutter/material.dart';
import 'package:amategeko_yumuhanda/components/quiz.dart';
import 'package:amategeko_yumuhanda/components/result.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = const [
    {
      'text': 'Umuntu yemerewe kwambuka ryari?',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'hariomo ibara ryu mutuku'},
        {'apl': 'B', 'text': 'harimo ibara ry\'icyatsi'},
        {'apl': 'C', 'text': 'harimo ibara ry\'umukara'},
        {'apl': 'D', 'text': 'nta gisubizo kirimo'}
      ]
    },
    {
      'text': 'what\'s your favorite color',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'Red'},
        {'apl': 'B', 'text': 'Green'},
        {'apl': 'C', 'text': 'black'},
        {'apl': 'D', 'text': 'White'}
      ]
    },
    {
      'text': 'what\'s your favorite color',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'Red'},
        {'apl': 'B', 'text': 'Green'},
        {'apl': 'C', 'text': 'black'},
        {'apl': 'D', 'text': 'White'}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(String apl, String right) {
    if (apl == right) {
      _totalScore += 1;
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // title: Text('Size'),
            content: Text('Correct'),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // title: Text('Size'),
            content: Text("Worng, right answer was $right"),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
    setState(() {
      _questionIndex++;
    });
    // _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : Result(_totalScore, resetQuiz),
    );
  }
}
