import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selcetedHandler;
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
          RaisedButton(
            color: Colors.blue,
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
