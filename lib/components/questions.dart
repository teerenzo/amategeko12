import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  final isImage;
  Questions(this.question, this.isImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: isImage
          ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Iki cyapa gisobanura ko:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(child: Image.asset(question))
            ])
          : Text(
              question,
              style: TextStyle(fontSize: 20),
              // textAlign: TextAlign.center,
            ),
    );
  }
}
