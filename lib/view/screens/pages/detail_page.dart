import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../db/database.dart';
import '../../../main.dart';
import '../../../style/style.dart';

import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  //多言語化
  final currentLocale = Intl.getCurrentLocale();

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
      "1.美味しい果物を食べるとき, 鮮度が重要なのはなぜですか？",
      "2.${widget.selectedFruit.name}の主要な産地はどこですか？",
      "2-2. 産地を選ぶために参考にするポイントはありますか？",
      "3.${widget.selectedFruit.name}の有名な品種は何ですか？",
      "3-2.${widget.selectedFruit.name}の糖度の高い品種はどれですか？",
      "3-3.${widget.selectedFruit.name}の種のない品種はどれですか？",
      "4.${widget.selectedFruit.name}の旬の時期はいつですか？",
      "5.${widget.selectedFruit.name}には, どんな栄養素が含まれますか？",
      "5-2.${widget.selectedFruit.name}の栄養素には, どんな効能がありますか？",
      "6.${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
      "7.美味しい${widget.selectedFruit.name}の見分け方は？",
    ];

    final List detailAnswers = [
      //1.
      "鮮度のよい果物は, 良い味や香りがしており, 栄養素も分解されず残っております. "
          "\nまた, 食物繊維も豊富で, 病気に対する免疫力をつけてくれます.",
      //2.
      "${widget.selectedFruit.famousArea}, 等が生産量の多い産地とされております.",
      //2-2.
      "温暖な地域で栽培された果物は, 糖度が高く, 甘みが強い傾向があります. 寒冷な地域で栽培された果物は, 酸味が強い傾向があります. \n\n"
          "土の粒子が粗い砂質土壌で栽培された果物は, 糖度が高く, 甘味が強い傾向があります."
          "火山の噴火によって出来た土壌で栽培された果物は, ミネラル分を多く含み, 酸味が強い傾向があります.\n\n "
          "有機質肥料を使って栽培された果物は, 化学肥料で栽培された果物よりも甘みが強い傾向があります.",
      //3.
      "${widget.selectedFruit.famousBreed}, 等が有名な品種とされております.",
      //3-2.
      "${widget.selectedFruit
          .sweetBreed}\n最新の品種は品種改良で糖度が高いものが多いので, 是非チェックしてみて下さい.",
      //3-3.
      "${widget.selectedFruit.seedlessVarieties}",
      //4.
      "大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
      //5.
      "栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
      //5.2
      "${widget.selectedFruit.nutrientEfficacy}",
      //6.
      "場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
      //7.
      "${widget.selectedFruit.distinguish}",
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
              "果樹園",
              style: TextStyle(fontSize: 25.0),
            ),
            content: Text(
              "周辺の果樹園を検索しても\nよろしいでしょうか？",
              style: TextStyle(fontSize: 20.0),
            ),
            actions: [
              TextButton(
                child: Text(
                  "キャンセル",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              //_launchURLで最寄りの果樹園に飛ぶ
              TextButton(
                child: Text(
                  "OK",
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
