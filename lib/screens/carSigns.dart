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
      'name': '',
      'picture': 'images/icyapa1.png',
      'detailts': 'Ahari amabuye ahanuka'
    },
    {
      'name': '',
      'picture': 'images/icyapa2.png',
      'detailts': 'Ifungana ry’umuhanda'
    },
    {
      'name': '',
      'picture': 'images/icyapa3.png',
      'detailts':
          'amakoni abiri cyangwa uruhererekane rw’amakoni arenga abiri, irya mbere riri ibumoso'
    },
    {
      'name': '',
      'picture': 'images/icyapa4.png',
      'detailts': 'ifungana ry’umuhanda n’akayira gasatira umuhanda iburyo'
    },
    {
      'name': '',
      'picture': 'images/icyapa5.png',
      'detailts': 'ukugenda mu muhanda ubisikanirwamo'
    },
    {
      'name': '',
      'picture': 'images/icyapa6.jpg',
      'detailts': 'Ntihanyurwa mu byerekezo byombi'
    },
    {
      'name': '',
      'picture': 'images/icyapa7.jpg',
      'detailts': 'Ntihanyurwa'
    },
    {
      'name': '',
      'picture': 'images/icyapa8.png',
      'detailts': 'Ntihanyurwa n’ikinyabiziga icyo aricy cyose gifite moteri keretse amapikipiki adafite akanyamitende ko ku ruhande kimwe na za velomoteri'
    },
    {
      'name': '',
      'picture': 'images/icyapa9.png',
      'detailts': 'Ntihanyurwa n’ibinyabiziga bigenewe gutwara ibicuruzwa'
    },
    {
      'name': '',
      'picture': 'images/icyapa10.png',
      'detailts': 'Birabujijwe kunyura ku binyabiziga byose uretse ibinyamitende ibiri n’amapikipiki adafite akanyabiziga ko ku ruhande'
    },
    {
      'name': '',
      'picture': 'images/icyapa11.jpg',
      'detailts': 'Birabujijwe guhagarara umwanya munini'
    },
    {
      'name': '',
      'picture': 'images/icyapa12.png',
      'detailts': 'Birabujijwe guhagarara umwanya munini n’umuto'
    },
    {
      'name': '',
      'picture': 'images/icyapa13.jpg',
      'detailts': 'Icyerekezo gitegetswe'
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
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      SingleSign(
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
