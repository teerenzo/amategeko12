import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class Lessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fromCSSColor('#0f1a2f'),
        title: Text("Lessons"),
      ),
      body: Center(
        child: Text("this is Lessons page"),
      ),
    );
  }
}
