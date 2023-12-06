import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/caution_point.dart';
import 'package:gap/gap.dart';

class MannersPage extends StatefulWidget {
  @override
  State<MannersPage> createState() => _MannersPageState();
}

class _MannersPageState extends State<MannersPage> {
  bool _isExpanded1 = false;

  bool _isExpanded2 = false;

  bool _isExpanded3 = false;

  bool _isExpanded4 = false;

  bool _isExpanded5 = false;

  bool _isExpanded6 = false;

  bool _isExpanded7 = false;

  bool _isExpanded8 = false;

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
                  image: AssetImage("assets/background/fruits_blue.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.blue,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.lightBlue,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "マナー",
                style: TextStyle(
                  fontFamily: ThirdFont,
                  fontSize: 30.0,
                ),
              ),
            ),

            //マナー1
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[600],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded1 = !_isExpanded1;
                            });
                          },
                          child: Text(attentions["0"]!,
                              overflow: _isExpanded1
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー2
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded2 = !_isExpanded2;
                            });
                          },
                          child: Text(attentions["1"]!,
                              overflow: _isExpanded2
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー3
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[300],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded3 = !_isExpanded3;
                            });
                          },
                          child: Text(attentions["2"]!,
                              overflow: _isExpanded3
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー4
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[200],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded4 = !_isExpanded4;
                            });
                          },
                          child: Text(attentions["3"]!,
                              overflow: _isExpanded4
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    Gap(20),

                    //マナー5
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[100],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded5 = !_isExpanded5;
                            });
                          },
                          child: Text(attentions["4"]!,
                              overflow: _isExpanded5
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー6
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[200],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded6 = !_isExpanded6;
                            });
                          },
                          child: Text(attentions["5"]!,
                              overflow: _isExpanded6
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー7
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[300],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded7 = !_isExpanded7;
                            });
                          },
                          child: Text(attentions["6"]!,
                              overflow: _isExpanded7
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),

                    Gap(20),

                    //マナー8
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded8 = !_isExpanded8;
                            });
                          },
                          child: Text(attentions["7"]!,
                              overflow: _isExpanded8
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
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
}
