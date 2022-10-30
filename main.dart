/// GudFud
/// the gudfud is an app that shows the nutritional benefits of go, grow, glow or the g foods. 
/// Laurence Jade Javier
/// Ernest Sacdal
/// John Ken Talusan
///Leslie Kate Pagaduan
/// October 28 2022
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
