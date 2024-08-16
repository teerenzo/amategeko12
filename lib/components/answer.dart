import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class Answer extends StatelessWidget {
  final void Function() selcetedHandler;
  final String text;

  Answer(
    this.selcetedHandler,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 0.0),
      child: Column(
        children: [
          Divider(),
          TextButton(
            // color: fromCSSColor('#0f1a2f'),
            child: ListTile(
              title: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            onPressed: selcetedHandler,
          ),
        ],
      ),
    );
  }
}
