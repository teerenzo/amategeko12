import 'package:amategeko_yumuhanda/screens/singleSign.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class CarSigns extends StatefulWidget {
  @override
  _CarSignsState createState() => _CarSignsState();
}

class _CarSignsState extends State<CarSigns> {
  var signs = [
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
    {
      'name': 'stop',
      'picture': 'images/carSign.png',
      'detailts': 'Cyerekana oho ugomba guhagarara'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fromCSSColor('#0f1a2f'),
        title: Text("car signs"),
      ),
      body: GridView.builder(
        itemCount: signs.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SingleSign(
                        signDetailts: signs[index]['detailts'],
                        signName: signs[index]['name'],
                        signPicture: signs[index]['picture'],
                      )));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridTile(
                  child: Image.asset(
                    signs[index]['picture'],
                    height: 90.0,
                  ),
                  footer: Container(
                    color: Colors.white70,
                    child: Text(
                      signs[index]['name'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
