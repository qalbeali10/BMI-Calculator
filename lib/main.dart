// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
Map<int, Color> color =
{
00:Color.fromRGBO(136,14,79, 0),
50:Color.fromRGBO(136,14,79, 1),
100:Color.fromRGBO(136,14,79, .2),
200:Color.fromRGBO(136,14,79, .3),
300:Color.fromRGBO(136,14,79, .4),
400:Color.fromRGBO(136,14,79, .5),
500:Color.fromRGBO(136,14,79, .6),
600:Color.fromRGBO(136,14,79, .7),
700:Color.fromRGBO(136,14,79, .8),
800:Color.fromRGBO(136,14,79, .9),
900:Color.fromRGBO(136,14,79, 1),
};
MaterialColor colorCustom = MaterialColor(0xFF0A0E21, color);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData(
       // primaryColor: Color(0xff0a0e21),
       primarySwatch: colorCustom,
       scaffoldBackgroundColor: colorCustom,
       textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))
       // accentColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

