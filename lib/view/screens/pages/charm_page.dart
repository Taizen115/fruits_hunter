import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                  colors: [Colors.white70, Colors.white12]),
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
              backgroundColor: Colors.transparent,
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
                      ).animate().fade(duration: 1000.ms).scale().then(delay: 3000.ms),
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
                    ).animate().fade(duration: 2000.ms).scale().then(delay: 5000.ms),

                Gap(20),

                //魅力3
                Container(
                  child: Bubble(
                    margin: BubbleEdges.only(top: 10),
                    color: Colors.white70,
                    child: Text(appeals["2"]!,
                        style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ).animate().fade(duration: 3000.ms).scale().then(delay: 7000.ms),

                    Gap(20),

                    //魅力4
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white70,
                        child: Text(appeals["3"]!,
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ).animate().fade(duration: 4000.ms).scale().then(delay: 9000.ms),
                    Gap(20),

                    //魅力5
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white70,
                        child: Text(appeals["4"]!,
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ).animate().fade(duration: 5000.ms).scale().then(delay: 11000.ms),

                    Gap(20),

                    //魅力6
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white70,
                        child: Text(appeals["5"]!,
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ).animate().fade(duration: 6000.ms).scale().then(delay: 13000.ms),

                    Gap(20),

                    //魅力7
                    Container(
                      child: Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Colors.white70,
                        child: Text(appeals["6"]!,
                            style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ).animate().fade(duration: 7000.ms).scale().then(delay: 15000.ms),

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
