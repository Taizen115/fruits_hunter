import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/caution_point.dart';
import 'package:gap/gap.dart';

class CautionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [

      //グラデーション
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
                image: AssetImage("assets/character/caution_s.png"),
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
            "注意点",
            style: TextStyle(
              fontFamily: MainFont,
              fontSize: 25.0,
            ),
          ),
        ),

          //注意点1
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 30.0,
              ),
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
                        child: Text(
                            attentions["注意点1"]!,
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
              Gap(15),

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
                        child: Text(
                        attentions["注意点2"]!,
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
        )
    )]);

  }
}
