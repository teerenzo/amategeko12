import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int questionsLength;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz, this.questionsLength);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Your Score: $totalScore/$questionsLength',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
