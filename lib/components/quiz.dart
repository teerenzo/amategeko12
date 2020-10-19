import 'package:flutter/material.dart';
import 'package:amategeko_yumuhanda/components/questions.dart';
import 'package:amategeko_yumuhanda/components/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Ibibazo: 3/10",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                ),
              ),
              Text(
                "30",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Questions(questions[questionIndex]['text']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(
                  answer['apl'], questions[questionIndex]['right']),
              answer['text'],
              answer['apl']);
        }).toList()
      ],

    );
  }
}
