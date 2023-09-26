import 'package:flutter/material.dart';
import 'package:fruits_hunter/screens/home_screen.dart';
import 'package:fruits_hunter/style/style.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FruitsHunter",
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: MainFont
      ),
      home: HomeScreen(),
    );
  }
}
