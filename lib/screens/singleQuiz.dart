import 'dart:async';
import 'package:amategeko_yumuhanda/module/quiz1.dart';
import 'package:amategeko_yumuhanda/module/quiz2.dart';
import 'package:amategeko_yumuhanda/module/quiz3.dart';
import 'package:amategeko_yumuhanda/module/quiz4.dart';
import 'package:flutter/material.dart';
import 'package:amategeko_yumuhanda/components/quiz.dart';
import 'package:amategeko_yumuhanda/components/result.dart';
import 'package:from_css_color/from_css_color.dart';

class SingleQuiz extends StatefulWidget {
  final index;
  final title;
  SingleQuiz(this.index, this.title);
  @override
  _SingleQuizState createState() => _SingleQuizState();
}

class _SingleQuizState extends State<SingleQuiz> {
  var _questions;

  var _questionIndex = 0;
  var _totalScore = 0;
  Timer _timer;
  int start = 120;
  static const oneSecond = Duration(seconds: 1);

  @override
  void initState() {
    //to get questions for selected quiz
    if (widget.index == 0) {
      _questions = quiz1;
    } else if (widget.index == 1) {
      _questions = quiz2;
    } else if (widget.index == 2) {
      _questions = quiz3;
    } else if (widget.index == 3) {
      _questions = quiz4;
    }

    //const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (start > 0) {
          start--;
        } else {
          _timer.cancel();
          _answerQuestion("2", "4");
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    setState(() {
      _timer.cancel();
    });

    super.dispose();
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      start = 120;
    });
  }

  void _answerQuestion(String apl, String right) {
    _timer.cancel();
    if (apl == right) {
      _totalScore += 1;
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Correct'),
            actions: [
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    start = 120;
                    _timer = Timer.periodic(oneSecond, (timer) {
                      setState(() {
                        if (start > 0) {
                          start--;
                        } else {
                          if (_questions.length > _questionIndex) {
                            _answerQuestion("2", "4");
                          }
                          _timer.cancel();
                        }
                      });
                    });
                  });
                  Navigator.of(context).pop(context);
                },
                child: _questions.length > _questionIndex
                    ? Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
              ),
            ],
          );
        },
      );
    } else if (apl == '2' && right == '4') {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Time out'),
            actions: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    start = 120;
                    _timer = Timer.periodic(oneSecond, (timer) {
                      setState(() {
                        if (start > 0) {
                          start--;
                        } else {
                          if (_questions.length > _questionIndex) {
                            _answerQuestion("2", "4");
                          }
                          _timer.cancel();
                        }
                      });
                    });
                  });
                  Navigator.of(context).pop(context);
                },
                child: _questions.length > _questionIndex
                    ? Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Worng, right answer was:"),
                  SizedBox(height: 8),
                  Text((_questions[_questionIndex - 1]['answers']
                          as List<Map<String, Object>>)
                      .singleWhere(
                          (element) => element['apl'] == right)['text']),
                ],
              ),
            ),
            actions: [
              MaterialButton(
                color: Colors.yellowAccent,
                onPressed: () {
                  setState(() {
                    start = 120;
                    _timer = Timer.periodic(oneSecond, (timer) {
                      setState(() {
                        if (start > 0) {
                          start--;
                        } else {
                          _timer.cancel();
                          if (_questions.length > _questionIndex) {
                            _answerQuestion("2", "4");
                          }
                        }
                      });
                    });
                  });
                  Navigator.of(context).pop(context);
                },
                child: _questions.length > _questionIndex
                    ? Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.black,
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
        backgroundColor: fromCSSColor('#0f1a2f'),
        title: Text(widget.title),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion, start)
          : Result(_totalScore, resetQuiz, _questions.length),
    );
  }
}
