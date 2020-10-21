import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class SingleSign extends StatelessWidget {
  final signName;
  final signPicture;
  final signDetailts;
  SingleSign({this.signDetailts, this.signName, this.signPicture});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fromCSSColor('#0f1a2f'),
        title: Text(signName),
      ),
      body: ListView(
        children: [
          // Container(
          //   height: 300.0,
          //   child:
          Column(
            children: [
              Container(
                height: 300.0,
                color: Colors.white,
                child: Image.asset(
                  signPicture,
                  // fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.white70,
                child: ListTile(
                  title: Text(
                    signName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Colors.blue),
                      Text(
                        "$signDetailts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  // title: Row(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
