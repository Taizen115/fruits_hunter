import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../style/style.dart';

class BelongingsPage extends StatefulWidget {
  @override
  State<BelongingsPage> createState() => _BelongingsPageState();
}

class _BelongingsPageState extends State<BelongingsPage> {
  Map<String, bool> belongings = {
    '長袖の服': false,
    '虫よけスプレー': false,
    '日焼け止め': false,
    '帽子': false,
    'ウェットティッシュ': false,
    'タオル': false,
    'クーラーボックス': false,
    '飲み物': false,
  };

  Map<String, IconData> icons = {
    '長袖の服': FontAwesomeIcons.shirt,
    '虫よけスプレー': FontAwesomeIcons.bug,
    '日焼け止め': FontAwesomeIcons.sun,
    '帽子': FontAwesomeIcons.redhat,
    'ウェットティッシュ': FontAwesomeIcons.boxTissue,
    'タオル': FontAwesomeIcons.rug,
    'クーラーボックス': FontAwesomeIcons.box,
    '飲み物': FontAwesomeIcons.bottleWater,
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: FaIcon(FontAwesomeIcons.eraser),
            backgroundColor: Colors.lightBlue,

            //TODO checkBoxを全て外す
            onPressed: () {
              belongings.forEach((key, value) {
                if (value == true) {
                  belongings[key] = false;
                }
                setState(() {});
              });
            }),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.lightBlue,
          centerTitle: true,
          leading: TextButton(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.lightBlue,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "持ち物リスト",
            style: TextStyle(fontFamily: ThirdFont, fontSize: 30.0),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            //1階　グラデーション

            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white60, Colors.white38]),
              ),
              child: Image.asset("assets/background/fruit_line.jpg",
                  fit: BoxFit.cover),
            ),

            //2階　コンテンツ

            SizedBox(height: kToolbarHeight + 10),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                // shrinkWrap: true,
                children: belongings.keys.map((String key) {
                  return CheckboxListTile(
                    activeColor: Colors.lightBlue,
                    side: BorderSide(color: Colors.black54, width: 2.0),
                    title: Row(
                      children: [
                        Text(
                          key,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 20.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            decoration: belongings[key] ?? false
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            icons[key],
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: belongings[key],
                    onChanged: (bool? value) {
                      setState(() {
                        belongings[key] = value!;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
