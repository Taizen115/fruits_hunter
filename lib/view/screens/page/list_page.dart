import 'package:flutter/material.dart';
import 'package:fruits_hunter/db/database.dart';
import 'package:fruits_hunter/main.dart';
import 'package:fruits_hunter/view/screens/page/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_hunter/style/style.dart';

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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.white70,
            title: Center(
              child: Text(
                "果物一覧",
                style: TextStyle(
                  fontFamily: MainFont,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          body: (fruitsList.isEmpty)
              ? Container()
              : Card(
                  color: Colors.blueAccent,
                  elevation: 12.0,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List<Widget>.generate(fruitsList.length, (index) {
                      final fruit = fruitsList[index];
                      return InkWell(
                        onTap: () => _goDetailPage(fruit),
                        child: Card(
                          elevation: 12.0,
                          child: GridTile(
                            child: Image.asset(
                                "assets/images/${fruit.image_file_name}"),
                            footer: Center(child: Text(fruit.name)),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
        ),
      ),
    );
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
