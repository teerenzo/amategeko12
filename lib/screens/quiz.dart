import 'dart:async';

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
      'text': 'Ijambo akagarurarumuril,'
          ' bivuga akantu karabagirana gasubiza imirasire y’urumuri :?',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'a) Ku kintu kirabagirana'},
        {'apl': 'B', 'text': 'b) Ku kintu kiyohereje'},
        {'apl': 'C', 'text': 'c) Ku mpande z’inzira nyabagendwa'},
        {'apl': 'D', 'text': 'd) nta gisubizo kirimo'}
      ]
    },
    {
      'text':
          'Ijambo itara ndangakerekezo cyangwa ikinyoteri bivuga itara ry’ikinyabiziga rigenewe kwereka abandi bagenzi ko umuyobozi ashaka kugana:',
      'right': 'C',
      'answers': [
        {'apl': 'A', 'text': 'a) Iburyo'},
        {'apl': 'B', 'text': 'b) Ibumoso'},
        {'apl': 'C', 'text': 'c) Iburyo cg ibumoso'},
        {'apl': 'D', 'text': 'd) Ku ruhande uru nuru'}
      ]
    },
    {
      'text':
          'Ijambo ikinyabiziga gifatanije bivuga ikinyabiziga gikomatanyije kimwe ari ikinyabiziga gikurura ikindi ari :',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'a) Igikomatanye'},
        {'apl': 'B', 'text': 'b) Makuzungu'},
        {'apl': 'C', 'text': 'c) Remoruke'},
        {'apl': 'D', 'text': 'd) Igikururana kabiri'}
      ]
    },
    {
      'text':
          'Ijambo ikinyabiziga kigendeshwa na moteri » bivuga ikinyabiziga cyose gifite moteri kigendesha kandi kigendeshwa ',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'a) Umuyobozi'},
        {'apl': 'B', 'text': 'b) Nta  moteri'},
        {'apl': 'C', 'text': 'c) N\'ibikigize'},
        {'apl': 'D', 'text': 'd) Nta gisubizo cy’ukuri  kirimo'}
      ]
    },
    {
      'text': 'Ijambo inzira y’ibinyabiziga bivuga: ',
      'right': 'D',
      'answers': [
        {'apl': 'A', 'text': 'a) Inzira zikikije umuhanda'},
        {'apl': 'B', 'text': 'b) Umuhanda'},
        {'apl': 'C', 'text': 'c) Inzira nyabagendwa'},
        {'apl': 'D', 'text': 'd) Umuhanda n’inzira ziwukikije'}
      ]
    },
    {
      'text':
          'Ijambo « remoroki ntoya » bivuga remoroki iyo ariyo yose ifite uburemere : ',
      'right': 'B',
      'answers': [
        {'apl': 'A', 'text': 'a) Burenga ibiro 750'},
        {'apl': 'B', 'text': 'b) Butarenga ibiro 750'},
        {'apl': 'C', 'text': 'c) Bungana n’ibiro 750'},
        {'apl': 'D', 'text': 'd) Nta gisubizo cy’ukuri  kirimo'}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  Timer _timer;
  int start = 60;
  static const oneSecond = Duration(seconds: 1);

  @override
  void initState() {
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

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      start = 60;
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
                onPressed: () {
                  setState(() {
                    start = 60;
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
    } else if (apl == '2' && right == '4') {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Time out'),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    start = 60;
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
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Worng, right answer was: $right"),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    start = 60;
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
          ? Quiz(_questions, _questionIndex, _answerQuestion, start)
          : Result(_totalScore, resetQuiz, _questions.length),
    );
  }
}
