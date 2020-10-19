import 'package:amategeko_yumuhanda/components/quiz.dart';
import 'package:flutter/material.dart';
import 'package:amategeko_yumuhanda/screens/quiz.dart';

class Questions_and_answers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuizScreen quizScreen = QuizScreen();
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions_and_answers"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container();
        },
      ),
    );
  }
}
