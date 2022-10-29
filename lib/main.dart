/// Constellations
/// An application that shows pictures and information about the 7 major Constellations
///Programmers:
/// Laurence Jade Javier
/// Ernest Sacdal
/// John Ken Talusan
/// October 28 2022
/// 
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: HomePage(),
    );
  }
}