import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Your Score: $totalScore',
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
