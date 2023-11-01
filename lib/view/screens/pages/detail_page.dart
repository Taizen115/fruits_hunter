import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';
import '../../../db/database.dart';

class DetailPage extends StatelessWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white70,
        title: Text(
          "${selectedFruit.name}の詳細",
          style: TextStyle(fontFamily: SubFont, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),

            //導入
            Row(
              children: [
                Image.asset(
                  "assets/images/all_fruits.jpg",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child: Text(
                          "美味しい果物を食べるためには、鮮度と産地と品種名が重要とされております.どうかご参考ください.",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 50.0,
            ),

            //質問１
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
                      child: Text(
                        "${selectedFruit.name}の主要な産地はどこなの？",
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/lady.jpg",
                  width: 50.0,
                  height: 50.0,
                )
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child:
                          Text("${selectedFruit.famousArea}が, 主要な産地とされております.",
                              style: TextStyle(
                                fontFamily: SubFont,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            //質問2
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
                      child: Text("${selectedFruit.name}の旬の時期はいつにゃん？",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/character/cat.jpg",
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child:
                          Text("大体${selectedFruit.season}の時期に, 果樹園が営業しております.",
                              style: TextStyle(
                                fontFamily: SubFont,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            //質問3

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
                      child: Text("${selectedFruit.name}の有名な品種は何でございますか？",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/character/kyudo.jpg",
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child:
                          Text(" ${selectedFruit.famousBreed}が, 有名な品種とされております.",
                              style: TextStyle(
                                fontFamily: SubFont,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            //質問4

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
                      child: Text("${selectedFruit.name}には, どんな栄養素が詰まっているんすか？",
                          style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/character/judo.jpg",
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child: Text("栄養素は, ${selectedFruit.nutrients}が含まれております.",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            //質問5

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
                      child:
                          Text("${selectedFruit.name}の収穫体験は, 大体どのぐらいかかるでござるか？",
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/character/samurai.jpg",
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child: Text(
                          "場所と時期によりますが, 大体${selectedFruit.priceRange}の費用がかかります.",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            //質問6

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.rightCenter,
                      color: Colors.white30,
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
                ),
                Image.asset(
                  "assets/images/lady.jpg",
                  width: 50.0,
                  height: 50.0,
                )
              ],
            ),

            Row(
              children: [
                Image.asset(
                  "assets/images/${selectedFruit.imageFileName}",
                  width: 50.0,
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.blue[200],
                      child:
                      Text("${selectedFruit.distinguish}",
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

          ],
        ),
      ),
    ));
  }
}
