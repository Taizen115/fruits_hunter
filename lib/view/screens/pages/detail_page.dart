import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../db/database.dart';

class DetailPage extends StatefulWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    final Map<String, String> detailQuestions = {
      "0": "1.他のアウトドアにはない果物狩りの魅力は何ですか？",
      "1": "2.${widget.selectedFruit.name}の主要な産地はどこですか？",
      "2": "3.${widget.selectedFruit.name}の旬の時期はいつですか？",
      "3": "4.${widget.selectedFruit.name}の有名な品種は何ですか？",
      "4": "4-2.${widget.selectedFruit.name}の種のない品種はどれですか？",
      "5": "5.${widget.selectedFruit.name}には, どんな栄養素が含まれますか？",
      "6": "5-2.${widget.selectedFruit.name}の栄養素には, どんな効能がありますか？",
      "7": "6.${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
      "8": "7.美味しい${widget.selectedFruit.name}の見分け方は？",
    };

    final Map<String, String> detailAnswers = {
      "0": "とれたての果物をその場でたべられるのが, 一番の魅力でございます. "
          "農園によって, 様々な品種をお楽しみ頂けます.お持ち帰りできる農園もあるので,"
          " 家に帰って新鮮な果物を楽しめます."
          "旅行中のイベントとして, その土地自慢の果物狩りをお楽しみ頂けます.",
      "1": "${widget.selectedFruit.famousArea}, 等が生産量の多い産地とされております.",
      "2": "大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
      "3": "${widget.selectedFruit.famousBreed}, 等が有名な品種とされております.",
      "4": "${widget.selectedFruit.seedlessVarieties}",
      "5": "栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
      "6": "${widget.selectedFruit.nutrientEfficacy}",
      "7": "場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
      "8": "${widget.selectedFruit.distinguish}",
    };

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
            SingleChildScrollView(
              child: Column(
                children: [
                  Gap(kToolbarHeight + 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        color: Colors.white70,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: detailQuestions.length,
                          itemBuilder: (context, index) {
                            return ExpansionTile(
                              backgroundColor: Colors.blue[400],
                              title: Text(
                                detailQuestions[index.toString()]!,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    detailAnswers[index.toString()]!,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            );
                          },
                        ).animate(delay: 200.ms).fadeIn(delay: 200.ms),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    final String url =
        'https://www.google.co.jp/maps/search/果樹園%E3%80%80${widget.selectedFruit.name}';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }


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
              "周辺の果樹園を検索してもよろしいでしょうか？",
              style: TextStyle(fontSize: 20.0),
            ),
            actions: [
              TextButton(
                child: Text(
                  "キャンセル",
                  style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text(
                  "OK",
                  style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
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
