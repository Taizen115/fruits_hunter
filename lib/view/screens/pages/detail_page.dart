import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../db/database.dart';
import '../../../main.dart';
import '../../../style/style.dart';


class DetailPage extends StatefulWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  //多言語化
  String currentLocale = "en";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    initAd();
  }

  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List detailQuestions = [
      S.of(context).DetailQuestion0,
      S.of(context).DetailQuestion1,
      S.of(context).DetailQuestion2,
      S.of(context).DetailQuestion3,
      S.of(context).DetailQuestion4,
      S.of(context).DetailQuestion5,
      S.of(context).DetailQuestion6,
      S.of(context).DetailQuestion7,
      S.of(context).DetailQuestion8,
      S.of(context).DetailQuestion9,
      S.of(context).DetailQuestion10,

      // "1.美味しい果物を食べるとき, 鮮度が重要なのはなぜですか？",
      // "2.主要な産地はどこですか？",
      // "2-2. 産地を選ぶために参考にするポイントはありますか？",
      // "3.有名な品種は何ですか？",
      // "3-2.糖度の高い品種はどれですか？",
      // "3-3.種のない品種はどれですか？",
      // "4.旬の時期はいつですか？",
      // "5.どんな栄養素が含まれますか？",
      // "5-2.栄養素には, どんな効能がありますか？",
      // "6.収穫体験は, 大体どのぐらいかかりますか？",
      // "7.食べ頃の見分け方は？",
    ];

    final List detailAnswers = [
      S.of(context).DetailAnswer0,
      //1.
      // "鮮度のよい果物は, 良い味や香りがしており, 栄養素も分解されず残っております. "
      //     "\nまた, 食物繊維も豊富で, 病気に対する免疫力をつけてくれます.",
      //2.
      (currentLocale == "en") ? "${widget.selectedFruit.famousAreaEn}":"${widget.selectedFruit.famousArea}",
      //2-2.
      S.of(context).DetailAnswer1,
      // "温暖な地域で栽培された果物は, 糖度が高く, 甘みが強い傾向があります. 寒冷な地域で栽培された果物は, 酸味が強い傾向があります. \n\n"
      //     "土の粒子が粗い砂質土壌で栽培された果物は, 糖度が高く, 甘味が強い傾向があります."
      //     "火山の噴火によって出来た土壌で栽培された果物は, ミネラル分を多く含み, 酸味が強い傾向があります.\n\n "
      //     "有機質肥料を使って栽培された果物は, 化学肥料で栽培された果物よりも甘みが強い傾向があります.",
      //3.
      (currentLocale == "en") ? "${widget.selectedFruit.famousBreedEn}":"${widget.selectedFruit.famousBreed}",
      //3-2.
      (currentLocale == "en") ? "${widget.selectedFruit.sweetBreedEn}":"${widget.selectedFruit.sweetBreed}",
      //3-3.
      (currentLocale == "en") ? "${widget.selectedFruit.seedlessVarietiesEn}":"${widget.selectedFruit.seedlessVarieties}",
      //4.
      (currentLocale == "en") ? "${widget.selectedFruit.seasonEn}":"${widget.selectedFruit.season}",
      //5.
      (currentLocale == "en") ? "${widget.selectedFruit.nutrientsEn}":"${widget.selectedFruit.nutrients}",
      //5.2
      (currentLocale == "en") ? "${widget.selectedFruit.nutrientEfficacyEn}":"${widget.selectedFruit.nutrientEfficacy}",
      //6.
      (currentLocale == "en") ? "${widget.selectedFruit.priceRangeEn}":"${widget.selectedFruit.priceRange}",
      //7.
      (currentLocale == "en") ? "${widget.selectedFruit.distinguishEn}":"${widget.selectedFruit.distinguish}",
    ];


    //このコードは、アプリの1画面の見た目を設定する部分の説明です。

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.white,
                ),
                onPressed: () => _goMap(),
              ),
            ),
          ],
          leading: TextButton(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Image.asset(
                "assets/images/${widget.selectedFruit.imageFileName}",
                width: 60.0,
                height: 50.0,
              ),
              Gap(10),
              Expanded(
                child: Text(
                  "${widget.selectedFruit.name}",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ]),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            //1階　グラデーション
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black12, Colors.white60]),
              ),
              child: Image.asset(
                "assets/background/${widget.selectedFruit.backgroundImage}",
                fit: BoxFit.cover,
              ),
            ),

            //2階　コンテンツ
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(kToolbarHeight + 10),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Container(
                              color: Colors.white70,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: detailQuestions.length,
                                itemBuilder: (context, index) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child:
                                    ExpansionTile(
                                      backgroundColor: Colors.lightBlue,
                                      title: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          detailQuestions[index].toString(),
                                          style: TextStyle(
                                            fontFamily: SubFont,
                                            fontSize: 20.0,
                                            color: Colors.black87,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      // trailing: FaIcon(FontAwesomeIcons.leaf
                                      children: [
                                        ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              detailAnswers[index].toString(),
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ).animate(delay: 200.ms).fadeIn(delay: 200.ms),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20.0),

                Center(
                  child: (adManager.bannerAd == null)
                      ? Container(
                    width: 0.0,
                    height: 0.0,
                  )
                      : Container(
                    width: adManager.bannerAd!.size.width.toDouble(),
                    height: adManager.bannerAd!.size.height.toDouble(),
                    child: Center(
                      child: AdWidget(
                        ad: adManager.bannerAd!,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //最寄りの果樹園を検索
  void _launchURL() async {
    final String url =
        'https://www.google.co.jp/maps/search/果樹園%E3%80%80${widget.selectedFruit
        .name}';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  //最寄りの果樹園を検索するかどうかを聞く
  _goMap() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              //果樹園
              S.of(context).GoMap0,
              style: TextStyle(fontSize: 25.0),
            ),
            content: Text(
              //"周辺の果樹園を検索しても\nよろしいでしょうか？",
              S.of(context).GoMap1,
              style: TextStyle(fontSize: 20.0),
            ),
            actions: [
              TextButton(
                child: Text(
                  S.of(context).GoMap2,
                  // "キャンセル",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              //_launchURLで最寄りの果樹園に飛ぶ
              TextButton(
                child: Text(
                  S.of(context).GoMap3,
                  // "OK",
                  style: TextStyle(fontSize: 20.0, color: Colors.orangeAccent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  _launchURL();
                },
              ),
            ],
          );
        });
  }
}
