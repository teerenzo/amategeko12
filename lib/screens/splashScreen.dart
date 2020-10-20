import 'package:amategeko_yumuhanda/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _duration().then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return MyHome();
      }));
    });
    super.initState();
  }

  Future<bool> _duration() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/stop.jpg",
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "KORA RIMWE GUSA!!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ));
  }
}
