import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';

import '../../../db/database.dart';

class DetailPage extends StatelessWidget {

  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text(
            "果物の詳細", style: TextStyle(fontFamily: MainFont, fontSize: 20.0),),
          centerTitle: true,
        ),
        body: Container(
          child: Center(child: Text(selectedFruit.name)),));
  }
}