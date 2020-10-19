import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;
  Questions(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questions,
        style: TextStyle(fontSize: 20),
        // textAlign: TextAlign.center,
      ),
    );
  }
}
