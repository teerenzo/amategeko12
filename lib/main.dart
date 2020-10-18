import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Kora Rimwe",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: null)
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
                    border: Border.all(color: Colors.white, width: 4.0)),
                child: IconButton(
                  icon: Icon(Icons.star_rate,color: Colors.white,),
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
                  icon: Icon(Icons.power_settings_new,color: Colors.white,),
                  onPressed: () {
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5.0),
        child: GridView(
          children: [
            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/study.png")),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom:22.0,left: 9.0),
                child: Text("Tangira wige",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),
            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/traffic_light.jpg")),
                ),
              ),
              subtitle: Container(
                child: Text("Amatara Yo mu muhanda",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),
            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/carSign.png")),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom:22.0,left: 9.0),
                child: Text("Ibimenyetso by'imodoka",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),

            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/questions.jpg")),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom:22.0,left: 9.0),
                child: Text("Soma Ibibazo",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),
            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/quiz_logo.png")),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom:22.0,left: 9.0),
                child: Text("Imenyereze",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),
            ListTile(
              title: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: CircleAvatar(
                      child: Image.asset("images/share.png")),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom:22.0,left: 9.0),
                child: Text("Sangiza Abandi",style: TextStyle(
                    fontSize: 16.0,color: Colors.pink,fontWeight: FontWeight.w700
                ),),
              ),
            ),

          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}

