import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selcetedHandler;
  final String text;
  final String apl;

  Answer(this.selcetedHandler, this.text, this.apl);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: RaisedButton(
        color: Colors.blue,
        child: ListTile(
          leading: Text(apl),
          title: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        onPressed: selcetedHandler,
      ),
    );
  }
}
