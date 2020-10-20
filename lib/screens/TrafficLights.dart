import 'package:flutter/material.dart';

class Trafficlight_screen extends StatelessWidget {
  var lights = [
    {
      'image': 'images/traffic_light.jpg',
      'name': 'stop',
      'description': 'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
    },
    {
      'image': 'images/traffic_light.jpg',
      'name': 'stop',
      'description': 'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
    },
    {
      'image': 'images/traffic_light.jpg',
      'name': 'stop',
      'description': 'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
    },
    {
      'image': 'images/traffic_light.jpg',
      'name': 'stop',
      'description': 'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
          'icyapa kiranga ko utwaye ikinyabiziga agomba guhagarara'
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Amatara yo mu muhanda",
          style: TextStyle(fontSize: size.width / 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: lights.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  trailing: Image.asset(lights[index]['image'],
                      width: size.width / 7),
                  //leading: Image.asset(lights[index]['image'],width: size.width/5),
                  title: Text(
                    lights[index]['name'],
                    style:
                        TextStyle(color: Colors.red, fontSize: size.width / 15),
                  ),
                  subtitle: Column(
                    children: [
                      SizedBox(
                        height: size.height / 15,
                      ),
                      Text(
                        lights[index]['description'],
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.lightBlue,
                            fontSize: size.width / 24),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
