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

            SizedBox(height: 30.0,),

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
                      child: Text("美味しい果物を食べるためには、鮮度と産地と品種名が重要とされております.どうかご参考ください.",
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
                      child: Text("大体${selectedFruit.season}の時期に, 果樹園が営業しております.",
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
                      child:
                          Text("${selectedFruit.name}には, どんな栄養素が詰まっているんすか？",
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
                      child: Text(
                          "${selectedFruit.name}の収穫体験は, 大体どのぐらいかかるでござるか？",
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
                      child:
                          Text("場所と時期によりますが, 大体${selectedFruit.priceRange}の費用がかかります.",
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

            //   Stack(children: [
            //     Image.asset("assets/images/questioner.jpg"),
            //     Positioned(
            //         top: 35.0,
            //         right: 8.0,
            //         left: 20.0,
            //         child: Text(
            //           "${selectedFruit.name}の主要な産地は？",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   Stack(children: [
            //     Image.asset("assets/images/answerer.jpg"),
            //     Positioned(
            //         top: 30.0,
            //         right: 8.0,
            //         left: 130.0,
            //         child: Text(
            //           "${selectedFruit.famousArea}です.",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   SizedBox(
            //     height: 10.0,
            //   ),
            //   Stack(children: [
            //     Image.asset("assets/images/questioner.jpg"),
            //     Positioned(
            //         top: 35.0,
            //         right: 8.0,
            //         left: 20.0,
            //         child: Text(
            //           "${selectedFruit.name}の旬の時期は？",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   Stack(children: [
            //     Image.asset("assets/images/answerer.jpg"),
            //     Positioned(
            //         top: 30.0,
            //         right: 8.0,
            //         left: 130.0,
            //         child: Text(
            //           "${selectedFruit.season}です.",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   SizedBox(
            //     height: 10.0,
            //   ),
            //   Stack(children: [
            //     Image.asset("assets/images/questioner.jpg"),
            //     Positioned(
            //         top: 35.0,
            //         right: 8.0,
            //         left: 20.0,
            //         child: Text(
            //           "${selectedFruit.name}の有名な品種は？",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   Stack(children: [
            //     Image.asset("assets/images/answerer.jpg"),
            //     Positioned(
            //         top: 22.0,
            //         right: 8.0,
            //         left: 130.0,
            //         child: Text(
            //           "${selectedFruit.famousBreed}です.",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   SizedBox(
            //     height: 10.0,
            //   ),
            //   Stack(children: [
            //     Image.asset("assets/images/questioner.jpg"),
            //     Positioned(
            //         top: 35.0,
            //         right: 8.0,
            //         left: 20.0,
            //         child: Text(
            //           "${selectedFruit.name}の主要な栄養素は？",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   Stack(children: [
            //     Image.asset("assets/images/answerer.jpg"),
            //     Positioned(
            //         top: 22.0,
            //         right: 8.0,
            //         left: 130.0,
            //         child: Text(
            //           "${selectedFruit.nutrients}です.",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   SizedBox(
            //     height: 10.0,
            //   ),
            //   Stack(children: [
            //     Image.asset("assets/images/questioner.jpg"),
            //     Positioned(
            //         top: 35.0,
            //         right: 8.0,
            //         left: 20.0,
            //         child: Text(
            //           "${selectedFruit.name}狩りの価格帯は？",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
            //   Stack(children: [
            //     Image.asset("assets/images/answerer.jpg"),
            //     Positioned(
            //         top: 30.0,
            //         right: 8.0,
            //         left: 130.0,
            //         child: Text(
            //           "${selectedFruit.priceRange}です.",
            //           style:
            //               TextStyle(fontFamily: MainFont, fontSize: 12.0),
            //         )),
            //   ]),
          ],
        ),
      ),
    ));
  }
}
// _goReferencePage(BuildContext context) {
//   Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ReferencePage(),
//       ));
