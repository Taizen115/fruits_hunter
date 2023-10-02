import 'package:flutter/material.dart';
import 'package:fruits_hunter/fruits_db/database.dart';
import 'package:fruits_hunter/view/screens/home_screen.dart';
import 'package:fruits_hunter/style/style.dart';

late AppDatabase database;

void main (){
  database = AppDatabase();
  runApp(MyApp());
}

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
