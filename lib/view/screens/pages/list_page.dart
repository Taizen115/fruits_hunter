import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/main.dart';
import 'package:fruit_hunter/view/screens/pages/detail_page.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../db/database.dart';
import '../../../style/style.dart';
import '../../components/list_category_chips.dart';

class ListPage extends StatefulWidget {
  final List<Fruit> allFruitsList;

  ListPage({
    required this.allFruitsList,
  });

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Fruit> fruitsList = [];

  @override
  void initState() {
    super.initState();
    fruitsList = widget.allFruitsList;
    _getTypeFruits(context, 0);
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
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: MainFont,
                        fontSize: 25.0),
                  ),
                ],
              ),
            ),
            body: (fruitsList.isEmpty)
                ? Center(
                    child: Text(
                      "データが取得できませんでした。\n申し訳ありませんが画面を一旦閉じて\n再度実行してください",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                : Column(
                    children: [
                      ListCategoryChips(
                        onCategorySelected: (categoryId) =>
                            _getTypeFruits(context, categoryId),
                      ),
                      Gap(10),

                      //TODO 広告を実装したいと考えているが、「This AdWidget is already in the Widget tree」のエラーメッセージが出て、広告が表示されない

                      Center(
                        child: (adManager.bannerAd == null)
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
                        child: Card(
                          color: Colors.white,
                          child: AnimationLimiter(
                            child: GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              children: AnimationConfiguration.toStaggeredList(
                                duration: const Duration(milliseconds: 360),
                                childAnimationBuilder: (widget) =>
                                    FadeInAnimation(
                                  child: widget,
                                ),
                                children: List<Widget>.generate(
                                  fruitsList.length,
                                  (index) {
                                    final fruit = fruitsList[index];
                                    return AnimationConfiguration.staggeredGrid(
                                      position: index,
                                      duration: Duration(milliseconds: 375),
                                      columnCount: 2,
                                      child: ScaleAnimation(
                                        child: FadeInAnimation(
                                          child: InkWell(
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
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: Image.asset(
                                                      "assets/images/${fruit.imageFileName}"),
                                                ),
                                                footer: Center(
                                                  child: Text(
                                                    fruit.name,
                                                    style: TextStyle(
                                                        fontSize: 25.0,
                                                        fontFamily: ThirdFont),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
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
    adManager.disposeBannerAd();
  }

  //TODO 季節ごとに果物（DB）を表示させる

  Future<void> _getTypeFruits(BuildContext context, int categoryId) async {
    if (widget.allFruitsList.isEmpty) {
      Fluttertoast.showToast(
          msg: "[ListPage]データが取得できませんでした。申し訳ありませんが画面を一旦閉じて再度実行してください");
      return;
    }
    // print("category: ${categoryId}");

    //whereで全てのフルーツデータから抽出
    if (categoryId == 1) {
      fruitsList = await widget.allFruitsList
          .where((record) => record.typeSpring)
          .toList();
      //fruitsList = await database.fruitsSpring;
    } else if (categoryId == 2) {
      fruitsList = await widget.allFruitsList
          .where((record) => record.typeSummer)
          .toList();
      //fruitsList = await database.fruitsSummer;
    } else if (categoryId == 3) {
      fruitsList = await widget.allFruitsList
          .where((record) => record.typeAutumn)
          .toList();
      //fruitsList = await database.fruitsAutumn;
    } else if (categoryId == 4) {
      fruitsList = await widget.allFruitsList
          .where((record) => record.typeWinter)
          .toList();
      //fruitsList = await database.fruitsWinter;
    } else {
      fruitsList = await widget.allFruitsList;
      //fruitsList = await database.fruitsList;
    }
    print(fruitsList.length);

    setState(() {});
  }
}
