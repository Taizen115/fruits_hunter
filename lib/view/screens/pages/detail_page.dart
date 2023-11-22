import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/screens/pages/reference_page.dart';
import 'package:gap/gap.dart';
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
              backgroundColor: Colors.transparent,
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
                style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [

                  Gap(30),

                  //導入
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      color: Colors.white,
                      child: Text(
                          "美味しい果物を食べるためには、鮮度と産地と品種名が重要とされております.どうかご参考ください.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),

                  Gap(20),

                  //質問１
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child: Text(
                        "1. ${widget.selectedFruit.name}の主要な産地はどこでしょうか？",
                        style: TextStyle(
                          fontFamily: SubFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text(
                          "${widget.selectedFruit.famousArea}が, 主要な産地とされております.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 1000.ms)
                      .scale()
                      .then(delay: 3000.ms),

                  Gap(20),

                  //質問2
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child: Text("2. ${widget.selectedFruit.name}の旬の時期はいつですか？",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text(
                          "大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 2000.ms)
                      .scale()
                      .then(delay: 5000.ms),

                  Gap(20),

                  //質問3

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child:
                          Text("3. ${widget.selectedFruit.name}の有名な品種は何でしょうか？",
                              style: TextStyle(
                                fontFamily: SubFont,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text(
                          " ${widget.selectedFruit.famousBreed}が, 有名な品種とされております.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 3000.ms)
                      .scale()
                      .then(delay: 7000.ms),

                  Gap(20),

                  //質問4
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child: Text(
                          "4. ${widget.selectedFruit.name}には, どんな栄養素が詰まっているんですか？",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text(
                          "栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 4000.ms)
                      .scale()
                      .then(delay: 9000.ms),

                  Gap(20),

                  //質問5

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child: Text(
                          "5. ${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text(
                          "場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 5000.ms)
                      .scale()
                      .then(delay: 11000.ms),

                  Gap(20),

                  //質問6
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.blue[200],
                      child: Text(
                        "6. 美味しい${widget.selectedFruit.name}の見分け方は？",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  Gap(20),

                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white,
                      child: Text("${widget.selectedFruit.distinguish}",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center),
                    ),
                  )
                      .animate()
                      .fade(duration: 7000.ms)
                      .scale()
                      .then(delay: 13000.ms),

                  Gap(50),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReferencePage()));
                    },
                    child: Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.teal,
                        child: Text("果物狩りへ行きましょう！",
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
