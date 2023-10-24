import 'package:flutter/material.dart';
import 'package:fruits_hunter/main.dart';
import 'package:fruits_hunter/view/screens/page/detail_page.dart';
import 'package:fruits_hunter/style/style.dart';

import '../../../db/database.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Fruit> fruitsList = [];

  @override
  void initState() {
    super.initState();
    _getFruitsData();
  }

  @override
  void dispose() {
    _getFruitsData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Scaffold(
              body: (fruitsList.isEmpty)
                  ? Container()
                  : Card(
                color: Colors.white70,
                child: GridView.count(
                crossAxisCount: 2,
                children:
                List<Widget>.generate(fruitsList.length, (index) {
                  final fruit = fruitsList[index];
                  return InkWell(
                    onTap: () => _goDetailPage(fruit),
                    child: Card(
                      elevation: 20.0,
                      child: GridTile(
                        child: Image.asset(
                            "assets/images/${fruit.imageFileName}"),
                        footer: Center(
                            child: Text(
                              fruit.name,
                              style: TextStyle(fontSize: 25.0, fontFamily: MainFont),
                            )),
                      ),
                    ),
                  );
                }),
              ),)
            )));
  }

  _goDetailPage(Fruit selectedFruit) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          selectedFruit: selectedFruit,
        ),
      ),
    );
  }

  void _getFruitsData() async {
    fruitsList = await database.fruitsList;
    setState(() {});
  }
}
