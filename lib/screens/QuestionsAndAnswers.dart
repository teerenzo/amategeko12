import 'package:amategeko_yumuhanda/module/questionsAnswer.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

// ignore: camel_case_types
class Questions_and_answers extends StatelessWidget {
  //get questions and answers from outside
  final _questions = questionsAnswers;

  @override
  Widget build(BuildContext context) {
    // QuizScreen quizScreen = QuizScreen();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: fromCSSColor('#0f1a2f'),
          title: Text("Questions and answers"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
              itemCount: _questions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
                  title: _questions[index]['isImage']
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${index + 1}) Iki cyapa gisobanura ko:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 19.0),
                            ),
                            Image.asset(_questions[index]['text'])
                          ],
                        )
                      : Text(
                          "${index + 1}) ${_questions[index]['text']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 19.0),
                        ),
                  subtitle: Container(
                    // alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          ...(_questions[index]['answers']
                                  as List<Map<String, Object>>)
                              .map((answer) {
                            return (answer['apl'] == _questions[index]['right']
                                ? Text(
                                    answer['text'],
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    answer['text'],
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  ));
                          }).toList(),
                          // Divider(
                          //   color: Colors.blue,
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
