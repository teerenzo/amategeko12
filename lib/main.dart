import 'dart:io';

import 'package:amategeko_yumuhanda/screens/QuestionsAndAnswers.dart';
import 'package:amategeko_yumuhanda/screens/TrafficLights.dart';
import 'package:amategeko_yumuhanda/screens/carSigns.dart';
import 'package:amategeko_yumuhanda/screens/lessons.dart';
import 'package:amategeko_yumuhanda/screens/quiz.dart';
import 'package:amategeko_yumuhanda/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Kora Rimwe Utsinde",
          style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(
          color: Colors.blueAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  //color: Colors.red,
                  border: Border.all(color: Colors.white, width: 4.0),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.star_rate,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                    //color: Colors.red,
                    border: Border.all(color: Colors.white, width: 4.0)),
                child: IconButton(
                  icon: Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: GridView(
          children: [
            // study now grid
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Lessons();
                }));
              },
              child: Card(
                child: ListTile(
                  title: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/study.png",
                            width: size.width * 2,
                          ),
                          Text(
                            "Amasomo ya Audio",
                            style: TextStyle(
                                fontSize: size.width / 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //traffic light grid          // traffic light grid

            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Trafficlight_screen();
                }));
              },
              child: Card(
                child: ListTile(
                  title: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/traffic_light.jpg",
                            width: size.width / 4,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Amatara Yo mu muhanda",
                            style: TextStyle(
                                fontSize: size.width / 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // // car sign grid     // car sign grid           // car sign grid
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CarSigns();
                }));
              },
              child: Card(
                child: ListTile(
                  title: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/carSign.png",
                            width: size.width / 3,
                            // height: size.height,
                          ),
                          Text(
                            "Ibimenyetso by' imodoka",
                            style: TextStyle(
                                fontSize: size.width / 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
// question and answer grid
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Questions_and_answers();
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
                          "images/questions.jpg",
                          width: size.width / 3,
                        ),
                        Text(
                          "Ibibazo + Ibisubizo",
                          style: TextStyle(
                              fontSize: size.width / 24,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

// Quiz grid
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return QuizScreen();
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
                          width: size.width / 3,
                        ),
                        Text(
                          "Imenyereze",
                          style: TextStyle(
                              fontSize: size.width / 24,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Shyiramo numero yawe:",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                          subtitle: TextField(
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Colors.blueAccent, fontSize: 16.0),
                                hintText: "eg: 0780640237",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent, width: 2.0))),
                          ),
                        ),
                        actions: <Widget>[
                          RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              //Navigator.of(context).pop();
                            },
                            child: Text("Kanda Ugure"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            color: Colors.red,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "x",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      );
                    });
              },
              child: Card(
                child: ListTile(
                  title: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/buy.png",
                          width: size.width / 3,
                        ),
                        Text("Gura App",
                            style: TextStyle(
                                fontSize: size.width / 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}
