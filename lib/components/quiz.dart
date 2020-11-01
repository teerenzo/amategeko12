import 'dart:async';

import 'package:flutter/material.dart';
import 'package:amategeko_yumuhanda/components/questions.dart';
import 'package:amategeko_yumuhanda/components/answer.dart';

class Quiz extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  int counter;

  Quiz(this.questions, this.questionIndex, this.answerQuestion, this.counter);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    String counterF() {
      var output;
      if (widget.counter == 120) {
        output = '2:00';
      } else if (widget.counter < 120 && widget.counter > 60) {
        output = '1:${widget.counter - 60}';
      } else if (widget.counter == 60) {
        output = '1:00';
      } else {
        output = '0:${widget.counter}';
      }
      return output;
    }

    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Ibibazo: ${widget.questionIndex + 1}/${widget.questions.length}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                ),
              ),
              Text(
                counterF(),
                style: TextStyle(
                    color: widget.counter > 30 ? Colors.black : Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Questions(widget.questions[widget.questionIndex]['text'],
            widget.questions[widget.questionIndex]['isImage']),
        Padding(padding: const EdgeInsets.only(top: 90.0)),
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: Column(
              children: [
                ...(widget.questions[widget.questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(
                      () => widget.answerQuestion(answer['apl'],
                          widget.questions[widget.questionIndex]['right']),
                      answer['text']);
                }).toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
