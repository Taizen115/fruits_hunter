import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/view/components/charm_point.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';
import 'package:gap/gap.dart';

import '../../../style/style.dart';

class CharmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black54, Colors.white12]),
            ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/fruits_line.png"),
                  fit: BoxFit.cover),
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Gap(15),

                    InkWell(
                      onTap: () => _goListPage(context),
                      child:

                          //魅力1
                          Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(appeals["0"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //魅力2
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white70,
                        child: Text(appeals["1"]!,
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _goListPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
  }
}
