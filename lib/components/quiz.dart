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
    return Column(
      children: [
        Questions(questions[questionIndex]['text']),
        Padding(padding: const EdgeInsets.only(top: 260.0)),
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: Column(
              children: [
                ...(questions[questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(
                      () => answerQuestion(
                          answer['apl'], questions[questionIndex]['right']),
                      answer['text'],
                      answer['apl']);
                }).toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
