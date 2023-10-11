import 'package:flutter/material.dart';
import 'package:fruits_hunter/main.dart';
import 'package:fruits_hunter/style/style.dart';

import '../../../db/database.dart';

class DetailPage extends StatefulWidget {

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  List<Fruit> fruits = [];

  @override
  void initState() {
    _getAllFruits();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("果物の詳細", style: TextStyle(fontFamily: MainFont, fontSize: 20.0),),
        centerTitle: true,
      ),
      body: ListView.builder(
        //TODO ListViewの中身
        itemCount: fruits.length,
        itemBuilder: (_, position) => ListTile(
          title: Text(fruits[position].id.toString()),
          subtitle: Text(fruits[position].toString()),
        ),

      ),
    );
  }

  void _getAllFruits() async {
    fruits = await database.Fruits;
    setState(() {

    });

  }
}

