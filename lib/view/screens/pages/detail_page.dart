import 'package:bubble/bubble.dart';
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
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  bool _isExpanded5 = false;
  bool _isExpanded6 = false;

  @override
  Widget build(BuildContext context) {
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
                    Gap(30),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue,
                        child: TextButton(
                          onPressed: _launchURL,
                          child: Text("Google map",
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 30.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    // Gap(20),
                    //
                    // //導入
                    // Container(
                    //   child: Bubble(
                    //     margin: BubbleEdges.only(top: 10),
                    //     color: Colors.white,
                    //     child: Text(
                    //         "美味しい果物を食べるためには\n鮮度と産地と品種名が重要とされております.\nどうかご参考ください.",                        style: TextStyle(
                    //             fontFamily: MainFont,
                    //             fontSize: 30.0,
                    //             fontWeight: FontWeight.bold,
                    //         letterSpacing: 1.0),
                    //         textAlign: TextAlign.center),
                    //   ),
                    // ),

                    Gap(20),

                    Container(
                      child: Bubble(
                        elevation: 20.0,
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white,
                        child: Text(
                            "項目\n1.果物の主要な産地は？\n2.果物の旬の時期は？\n3.果物の主要な品種は？\n4.果物の含まれている主要な栄養素は？\n5.果物狩りの費用は？\n6.美味しい果物の見分け方は？",
                            style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                            textAlign: TextAlign.center),
                      ),
                    ).animate(delay: 200.ms).fadeIn(delay: 200.ms),

                    Gap(20),

                    //質問１
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child: Text(
                          "${widget.selectedFruit.name}の主要な産地はどこでしょうか？",
                          style: TextStyle(
                            fontFamily: ThirdFont,
                            fontSize: 25.0,
                            color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded1 = !_isExpanded1;
                            });
                          },
                          child: Text(
                              "1.${widget.selectedFruit.famousArea}, 等が生産量の多い産地とされております.",
                              overflow: _isExpanded1
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //質問2
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child: Text("${widget.selectedFruit.name}の旬の時期はいつですか？",
                            style: TextStyle(
                              fontFamily: ThirdFont,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded2 = !_isExpanded2;
                            });
                          },
                          child: Text(
                              "2.大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
                              overflow: _isExpanded2
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //質問3

                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child:
                            Text("${widget.selectedFruit.name}の有名な品種は何でしょうか？",
                                style: TextStyle(
                                  fontFamily: ThirdFont,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded3 = !_isExpanded3;
                            });
                          },
                          child: Text(
                              "3.${widget.selectedFruit.famousBreed}, 等が有名な品種とされております.",
                              overflow: _isExpanded3
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //質問4
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child: Text(
                            "${widget.selectedFruit.name}には, どんな栄養素が詰まっているんですか？",
                            style: TextStyle(
                              fontFamily: ThirdFont,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded4 = !_isExpanded4;
                            });
                          },
                          child: Text(
                              "4.栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
                              overflow: _isExpanded4
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //質問5

                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child: Text(
                            " ${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
                            style: TextStyle(
                              fontFamily: ThirdFont,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded5 = !_isExpanded5;
                            });
                          },
                          child: Text(
                              "5.場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
                              overflow: _isExpanded5
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //質問6
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.rightCenter,
                        color: Colors.blue[300],
                        child: Text(
                          "美味しい${widget.selectedFruit.name}の見分け方は？",
                          style: TextStyle(
                            fontFamily: ThirdFont,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white70,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded6 = !_isExpanded6;
                            });
                          },
                          child: Text("6.${widget.selectedFruit.distinguish}",
                              overflow: _isExpanded6
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL() async {
    const url = 'https://www.google.co.jp/maps/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

}
