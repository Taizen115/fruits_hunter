import 'package:flutter/material.dart';
import 'package:fruits_hunter/main.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/screens/pages/detail_page.dart';

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
              appBar: AppBar(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white70,
                title: Text("果物について", style: TextStyle(fontFamily: MainFont, fontSize: 20.0),),
              ),
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0),),),
                      elevation: 20.0,
                      child: GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                              "assets/images/${fruit.imageFileName}"),
                        ),
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

  //DetailPageにデータを持って移行させる

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

  //データベースを表示させる

  void _getFruitsData() async {
    fruitsList = await database.fruitsList;
    setState(() {});
  }
}