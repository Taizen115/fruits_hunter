import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
            centerTitle: true,
            leading: TextButton(
              child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "果物一覧",
              style: TextStyle(fontFamily: MainFont, fontSize: 30.0),
            ),
          ),
          body: (fruitsList.isEmpty)
              ? Container()
              : Card(
                  color: Colors.white,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List<Widget>.generate(fruitsList.length, (index) {
                      final fruit = fruitsList[index];
                      return InkWell(
                        onTap: () => _goDetailPage(fruit),
                        child: Card(
                          color: Colors.white,
                          shadowColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          elevation: 100.0,
                          child: GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                  "assets/images/${fruit.imageFileName}"),
                            ),
                            footer: Center(
                                child: Text(
                              fruit.name,
                              style: TextStyle(
                                  fontSize: 25.0, fontFamily: ThirdFont),
                            )),
                          ),
                        ),
                      );
                    }
                    ).animate(interval: 100.ms).scale(duration: 300.ms),
                  ),
                ),
        ),
      ),
    );
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
