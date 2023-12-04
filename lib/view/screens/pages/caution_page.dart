import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/caution_point.dart';
import 'package:gap/gap.dart';

class CautionPage extends StatefulWidget {
  @override
  State<CautionPage> createState() => _CautionPageState();
}

class _CautionPageState extends State<CautionPage> {
  bool _isExpanded1 = false;

  bool _isExpanded2 = false;

  bool _isExpanded3 = false;

  bool _isExpanded4 = false;

  bool _isExpanded5 = false;

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
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: TextButton(
                child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "マナー",
                style: TextStyle(
                  fontFamily: MainFont,
                  fontSize: 25.0,
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
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded1 = !_isExpanded1;
                            });
                          },
                          child: Text(
                              attentions["0"]!,
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
                          child: Text(
                              attentions["1"]!,
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
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded3 = !_isExpanded3;
                            });
                          },
                          child: Text(
                              attentions["2"]!,
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
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded4 = !_isExpanded4;
                            });
                          },
                          child: Text(
                              attentions["3"]!,
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
                        color: Colors.blue[400],
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded5 = !_isExpanded5;
                            });
                          },
                          child: Text(
                              attentions["4"]!,
                              overflow: _isExpanded5
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
