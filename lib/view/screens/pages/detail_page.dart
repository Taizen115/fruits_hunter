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
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ScrollController ctr = ScrollController();

    final Map<String, String> detailItems = {
      "0": "1.他のアウトドアにはない果物狩りの魅力は?",
      "1": "2.果物の主要な産地は?",
      "2": "3.果物の旬の時期は？",
      "3": "4.果物の主要な品種は？",
      "4": "5.果物の種のない品種は? ",
      "5": "6.果物の含まれている主要な栄養素は？",
      "6": "7.その栄養素の効能は？",
      "7": "8.果物狩りの費用は？",
      "8": "9.果物狩りの安い時期は？",
      "9": "10.美味しい果物の見分け方は？",
    };

    final Map<String, String> detailQuestions = {
      "0": "他のアウトドアにはない果物狩りの魅力は何でしょうか？",
      "1": "${widget.selectedFruit.name}の主要な産地はどこでしょうか？",
      "2": "${widget.selectedFruit.name}の旬の時期はいつですか？",
      "3": "${widget.selectedFruit.name}の有名な品種は何でしょうか？",
      "4": "${widget.selectedFruit.name}の種のない品種はどれでしょうか？",
      "5": "${widget.selectedFruit.name}には, どんな栄養素が含まれてるでしょうか？",
      "6": "${widget.selectedFruit.name}の栄養素には, どんな効能があるのでしょうか？",
      "7": "${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
      "8": "${widget.selectedFruit.name}狩りの安い時期は, いつ頃でしょうか？",
      "9": "美味しい${widget.selectedFruit.name}の見分け方は？",
    };

    final Map<String, String> detailAnswers = {
      "0": "1.とれたての果物をその場でたべられるのが, 一番の魅力でございます. "
          "農園によって, 様々な品種をお楽しみ頂けます.お持ち帰りできる農園もあるので,"
          " 家に帰って新鮮な果物を楽しめます."
          "旅行中のイベントとして, その土地自慢の果物狩りをお楽しみ頂けます",
      "1": "2.${widget.selectedFruit.famousArea}, 等が生産量の多い産地とされております.",
      "2": "3.大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
      "3": "4.${widget.selectedFruit.famousBreed}, 等が有名な品種とされております.",
      "4": "5.〇〇は, 種のない品種です.",
      "5": "6.栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
      "6": "7.栄養素の効能は, 〇〇です.",
      "7": "8.場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
      "8": "9.${widget.selectedFruit.name}狩りの安い時期は,大体〇〇頃です.",
      "9": "10.${widget.selectedFruit.distinguish}",
    };

    return SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black12, Colors.white60]),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/background/${widget.selectedFruit.backgroundImage}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white70,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "${widget.selectedFruit.name}の詳細",
                style: TextStyle(fontFamily: MainFont, fontSize: 30.0),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            color: Colors.blue,
                            child: TextButton(
                              onPressed: _launchURL1,
                              child: Text("・果物狩りへ　\n ( Google map )",
                                  style: TextStyle(
                                      fontFamily: MainFont,
                                      fontSize: 22.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Gap(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            color: Colors.indigo,
                            child: TextButton(
                              onPressed: _launchURL2,
                              child: Text("・体験談 \n ( VELTRA ) ",
                                  style: TextStyle(
                                      fontFamily: MainFont,
                                      fontSize: 22.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: SizedBox(
                          height: 700,
                          child: ListView.builder(
                            itemCount: detailItems.length,
                            itemBuilder: (context, index) {
                              return TextButton(
                                //TODO detailAnswersに画面内で遷移
                                onPressed: () {
                                  ctr.animateTo(10 * 100,
                                      duration: const Duration(milliseconds: 1000),
                                      curve: Curves.bounceIn);
                                },
                                child: ListTile(
                                  title: Text(
                                    detailItems[index.toString()]!,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              );
                            },
                          ).animate(delay: 200.ms).fadeIn(delay: 200.ms),
                        ),
                      ),
                    ),
                    Gap(30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 500,
                            child: ListView.builder(
                              itemCount: detailItems.length,
                              controller: ctr,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        detailQuestions[index.toString()]!,
                                        style: TextStyle(
                                            fontFamily: ThirdFont,
                                            fontSize: 25.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Gap(10),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _isExpanded = !_isExpanded;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          detailAnswers[index.toString()]!,
                                          overflow: _isExpanded
                                              ? TextOverflow.visible
                                              : TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Gap(20),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Text(
  //   detailItems["0"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["1"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["2"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["3"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["4"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["5"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["6"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["7"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["8"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),
  // Gap(10),
  // Text(
  //   detailItems["9"]!,
  //   style: TextStyle(
  //       fontSize: 25.0,
  //       fontFamily: MainFont,
  //       color: Colors.black),
  // ),

  void _launchURL1() async {
    const url = 'https://www.google.co.jp/maps/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL2() async {
    const url =
        'https://www.veltra.com/jp/japan/ctg/168763:%E3%83%95%E3%83%AB%E3%83%BC%E3%83%84%E7%8B%A9%E3%82%8A/reviews/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }
}
