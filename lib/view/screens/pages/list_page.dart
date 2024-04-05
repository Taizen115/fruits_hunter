import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/main.dart';
import 'package:fruit_hunter/view/screens/pages/detail_page.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../data/list_category.dart';
import '../../../db/database.dart';
import '../../../style/style.dart';
import '../../components/list_category_chips.dart';

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
    initAd();
  }

  //広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  void dispose() {
    adManager.disposeBannerAd();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [

        //1階　グラデーション
        DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black38, Colors.white10]),
          ),
          child: Image.asset("assets/background/trees.png", fit: BoxFit.cover),
        ),

        //2階　コンテンツ
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            // extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white,
                ),
                onPressed: () async {
                  await adManager.disposeBannerAd();
                  Navigator.of(context).pop();
                },
              ),
              title: Row(
                children: [
                  Image.asset(
                    "assets/images/fruit_basket.png",
                    width: 80.0,
                    height: 50.0,
                  ),
                  Gap(30),
                  Text(
                    "果物一覧",
                    style: TextStyle(color: Colors.white, fontFamily: MainFont, fontSize: 25.0),
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
                      Gap(10),

                      //TODO 広告を実装したいと考えているが、「This AdWidget is already in the Widget tree」のエラーメッセージが出て、広告が表示されない

                      Center(
                        //TODO[0405]"adManager == null"ではなく"adManager.bannerAd == null"にする必要あり
                        child: (adManager.bannerAd == null)
                        //child: (adManager == null)
                            ? Container(
                                width: 0.0,
                                height: 0.0,
                              )
                            : Container(
                                width:
                                    adManager.bannerAd!.size.width.toDouble(),
                                height:
                                    adManager.bannerAd!.size.height.toDouble(),
                                child: Center(
                                  child: AdWidget(
                                    ad: adManager.bannerAd!,
                                  ),
                                ),
                              ),
                      ),
                      Gap(10),

                      Expanded(
                        /*
                        * TODO[0405]一部端末でリストが表示されない問題
                        *  => shrinkWrapをfalseにしてfruitsListが空の場合の条件分岐を加えると解消するだろうか？？
                        * */
                        child: (fruitsList.isEmpty) ? Container() : Card(
                        //child: Card(
                          color: Colors.white,
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            children: List<Widget>.generate(fruitsList.length,
                                (index) {
                              final fruit = fruitsList[index];
                              return InkWell(
                                onTap: () => _goDetailPage(fruit),
                                child: Card(
                                  color: Colors.white,
                                  shadowColor: Colors.white70,
                                  surfaceTintColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  elevation: 100.0,
                                  child: GridTile(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/${fruit.imageFileName}"),
                                    ),
                                    footer: Center(
                                        child: Text(
                                      fruit.name,
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontFamily: ThirdFont),
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
        ),
      ],
    );
  }

  //DetailPageにデータを持って移行させる

  _goDetailPage(Fruit selectedFruit) async {
    await adManager.disposeBannerAd();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          selectedFruit: selectedFruit,
        ),
      ),
    );
    //TODO[0405]DetailPageで再度initAdするならここはdisposeじゃないか？
    //initAd();
    adManager.disposeBannerAd();
  }

  //TODO 季節ごとに果物（DB）を表示させる

  Future<void> _getTypeFruits(BuildContext context, categoryId) async {
    // print("category: ${categoryId}");

    if (categoryId == 1) {
      fruitsList = await database.fruitsSpring;
    } else if (categoryId == 2) {
      fruitsList = await database.fruitsSummer;
    } else if (categoryId == 3) {
      fruitsList = await database.fruitsAutumn;
    } else if (categoryId == 4) {
      fruitsList = await database.fruitsWinter;
    } else {
      fruitsList = await database.fruitsList;
    }

    setState(() {});
  }
}
