import 'package:amategeko_yumuhanda/screens/singleQuiz.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final quizList = [
    'EXAMEN 2017',
    'EXAMEN 2018',
    'EXAMEN  2019',
    'EXAMEN 2020'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: fromCSSColor('#0f1a2f'),
          title: Text("Quiz"),
        ),
        body: GridView.builder(
            itemCount: quizList.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SingleQuiz(index, quizList[index]);
                  }));
                },
                child: Card(
                  child: ListTile(
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/quiz_logo.png",
                            width: size.width / 5,
                          ),
                          Text(
                            quizList[index],
                            style: TextStyle(
                              fontSize: size.width / 28,
                              color: fromCSSColor('#0f1a2f'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
