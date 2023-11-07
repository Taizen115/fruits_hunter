import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/view/components/charm_point.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';
import 'package:gap/gap.dart';

import '../../../style/style.dart';

class CharmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black87, Colors.black12]),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/character/fruits_line.png"),
                fit: BoxFit.fitWidth),
          ),
        ),
      ),
      SafeArea(
          child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "魅力",
            style: TextStyle(
              fontFamily: MainFont,
              fontSize: 25.0,
            ),
          ),
        ),


        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () => _goListPage(context),


              //魅力1
              child: Row(
                children: [
                  Image.asset(
                    "assets/character/hotelman.png",
                    width: 75.0,
                    height: 75.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        nip: BubbleNip.leftCenter,
                        color: Colors.white70,
                        child: Text(appeals["魅力1"]!,
                            style: TextStyle(
                              fontFamily: SubFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Gap(15),

            //魅力2
            Row(
              children: [
                Image.asset(
                  "assets/character/hotelman.png",
                  width: 75.0,
                  height: 75.0,
                ),
                Expanded(
                  child: Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftCenter,
                      color: Colors.white70,
                      child: Text(appeals["魅力2"]!,
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      )),
    ]);
  }

  _goListPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
  }
}
