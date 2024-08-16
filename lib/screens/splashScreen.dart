import 'package:amategeko/main.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: fromCssColor('#1c2834'),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/stop.png",
                  width: size.width / 6,
                ),
                SizedBox(
                  height: size.height / 20,
                ),
                Text(
                  "KORA RIMWE GUSA!!",
                  style: TextStyle(
                    fontSize: size.width / 19,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
