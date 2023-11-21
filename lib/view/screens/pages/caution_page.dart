import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/caution_point.dart';
import 'package:gap/gap.dart';

class CautionPage extends StatelessWidget {
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
                  image: AssetImage("assets/background/caution_s.png"),
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
              leading: TextButton(
                child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
                onPressed: () => Navigator.of(context).pop(),
              ),
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Gap(20),
                      Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(attentions["0"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ).animate().fade(duration: 1000.ms).scale().then(delay: 3000.ms),


                      Gap(20),

                      //注意点2
                      Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(attentions["1"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ).animate().fade(duration: 2000.ms).scale().then(delay: 5000.ms),

                      Gap(20),

                      //注意点3
                      Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(attentions["2"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ).animate().fade(duration: 3000.ms).scale().then(delay: 7000.ms),

                      Gap(20),

                      //注意点4
                      Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(attentions["3"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ).animate().fade(duration: 4000.ms).scale().then(delay: 9000.ms),

                      Gap(20),

                      //注意点5
                      Container(
                        child: Bubble(
                          margin: BubbleEdges.only(top: 10),
                          color: Colors.white70,
                          child: Text(attentions["4"]!,
                              style: TextStyle(
                                fontFamily: MainFont,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ).animate().fade(duration: 5000.ms).scale().then(delay: 10000.ms),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
