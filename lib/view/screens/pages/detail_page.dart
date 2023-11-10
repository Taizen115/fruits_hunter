import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:gap/gap.dart';
import '../../../db/database.dart';

class DetailPage extends StatelessWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/${selectedFruit.backgroundImage}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
          centerTitle:true,
          title: Text(
            "${selectedFruit.name}の詳細",
            style: TextStyle(fontFamily: MainFont, fontSize: 20.0),
          ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [

              Gap(10),

              //導入
              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  color: Colors.white,
                  child: Text("美味しい果物を食べるためには、鮮度と産地と品種名が重要とされております.どうかご参考ください.",
                      style: TextStyle(
                        fontFamily: MainFont,
                        fontSize: 20.0,
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
                    "${selectedFruit.name}の主要な産地はどこでしょうか？",
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
                    child: Text("${selectedFruit.famousArea}が, 主要な産地とされております.",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center
                    ),
                  ),
                ).animate().fade(duration: 1000.ms).scale().then(delay: 3000.ms),

              Gap(20),

              //質問2
              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.blue[200],
                  child: Text("${selectedFruit.name}の旬の時期はいつですか？",
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
                    child: Text("大体${selectedFruit.season}の時期に, 果樹園が営業しております.",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ).animate().fade(duration: 1000.ms).scale().then(delay: 3000.ms),

              Gap(20),

              //質問3

              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.blue[200],
                  child: Text("${selectedFruit.name}の有名な品種は何でしょうか？",
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
                    child: Text(" ${selectedFruit.famousBreed}が, 有名な品種とされております.",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
              ).animate().fade(duration: 2500.ms).scale().then(delay: 5000.ms),

              Gap(20),

              //質問4
              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.blue[200],
                  child: Text("${selectedFruit.name}には, どんな栄養素が詰まっているんですか？",
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
                    child: Text("栄養素は, ${selectedFruit.nutrients}が含まれております.",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
              ).animate().fade(duration: 2500.ms).scale().then(delay: 5000.ms),

              Gap(20),

              //質問5

              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.blue[200],
                  child: Text("${selectedFruit.name}の収穫体験は, 大体どのぐらいかかるでござるか？",
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
                    child:
                        Text("場所と時期によりますが, 大体${selectedFruit.priceRange}の費用がかかります.",
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center),
                  ),
              ).animate().fade(duration: 3500.ms).scale().then(delay: 7000.ms),

              Gap(20),

              //質問6
              Container(
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.blue[200],
                  child: Text(
                    "美味しい${selectedFruit.name}の見分け方は？",
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
                    child: Text("${selectedFruit.distinguish}",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
              ).animate().fade(duration: 3500.ms).scale().then(delay: 7000.ms),
            ]
            ),
          ),
      ),
    ),
        ));
  }
}
