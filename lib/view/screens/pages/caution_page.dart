import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';

class CautionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          "注意点",
          style: TextStyle(fontFamily: MainFont),
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
                width: 50.0,
                height: 50.0,
              ),
              Expanded(
                child: Container(
                  child: Bubble(
                    margin: BubbleEdges.only(top: 10),
                    nip: BubbleNip.leftCenter,
                    color: Colors.white70,
                    child: Text(
                        "雨が降ったら, 電話で農園に連絡してください. また, 全天候型の農園もあるので, そういった農園を選ぶのもポイントです.",
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
          
          SizedBox(height: 30.0,),
          
          Row(
            children: [
              Image.asset(
                "assets/character/hotelman.png",
                width: 50.0,
                height: 50.0,
              ),
              Expanded(
                child: Container(
                  child: Bubble(
                    margin: BubbleEdges.only(top: 10),
                    nip: BubbleNip.leftCenter,
                    color: Colors.white70,
                    child:
                        Text("予約は不要な所もございますが, 農園に事前に電話かメールをして予約なさったほうが確実かと思われます.",
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
        ]),
      ),
    ));
  }
}
