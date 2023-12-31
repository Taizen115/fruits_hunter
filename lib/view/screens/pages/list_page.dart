import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/data/list_category.dart';
import 'package:fruits_hunter/main.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/list_category_chips.dart';
import 'package:fruits_hunter/view/screens/pages/detail_page.dart';
import 'package:gap/gap.dart';

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
    _getTypeFruits(context, categories);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.lightBlue,
          centerTitle: true,
          leading: TextButton(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.lightBlue,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            children: [
              Image.asset("assets/images/fruit_basket.png", width: 80.0, height: 80.0,),

              Gap(30),

              Text(
                "果物一覧",
                style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
              ),
            ],
          ),
        ),
        body: (fruitsList.isEmpty)
            ? Container()
            : Column(
          children: [
            ListCategoryChips(
              onCategorySelected: (categoryId) =>
                  _getTypeFruits(context, categoryId),
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children:
                  List<Widget>.generate(fruitsList.length, (index) {
                    final fruit = fruitsList[index];
                    return InkWell(
                      onTap: () => _goDetailPage(fruit),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.white70,
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
                  }).animate(interval: 50.ms).scale(duration: 50.ms),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //DetailPageにデータを持って移行させる

  _goDetailPage(Fruit selectedFruit) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            DetailPage(
              selectedFruit: selectedFruit,
            ),
      ),
    );
  }

  //TODO 季節ごとに果物（DB）を表示させる

  Future<void> _getTypeFruits(BuildContext context, categoryId) async {
    // print("category: ${categoryId}");

     if (categoryId == 1) {
      fruitsList = await database.fruitsSpring;
    }
    else if (categoryId == 2) {
      fruitsList = await database.fruitsSummer;
    }
    else if (categoryId == 3) {
      fruitsList = await database.fruitsAutumn;
    }
    else if (categoryId == 4) {
       fruitsList = await database.fruitsWinter;
     }
    else {
         fruitsList = await database.fruitsList;
       }

     setState(() {
     });

      // final viewModel = Provider.of<NewsListViewModel>(context, listen: false);
      // await viewModel.getNews(
      //   searchType: SearchType.CATEGORY,
      //   category: category,
      // );
    }
  }