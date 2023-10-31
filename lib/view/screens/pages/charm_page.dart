import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';

import '../../../style/style.dart';

class CharmPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white70,
            centerTitle: true,
            title: Text(
              "魅力",
              style: TextStyle(fontFamily: MainFont),
            ),
          ),

          //注意点1
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () => _goListPage(context),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/character/fruits_mix.png",
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
                              "とれたての果物をその場で食べられるのが, 一番の魅力でございます. 農園によって, 様々な品種もお楽しみ頂けます.",
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
              ),

              SizedBox(height: 30.0,),

              Row(
                children: [
                  Image.asset(
                    "assets/character/fruits_mix.png",
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
                        Text("関東のいちご狩りでは, 夜に楽しめる農園もございます. お昼ではご参加できない方も, 是非お楽しみ下さい.",
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

  _goListPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => ListPage()));
  }
}

