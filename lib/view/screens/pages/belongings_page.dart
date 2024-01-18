import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';

class BelongingsPage extends StatefulWidget {
  @override
  State<BelongingsPage> createState() => _BelongingsPageState();
}

class _BelongingsPageState extends State<BelongingsPage> {
  Map<String, bool> belongings = {
    '長袖シャツと長ズボン': false,
    '虫よけスプレー': false,
    '日焼け止め': false,
    '帽子': false,
    'ウェットティッシュ': false,
    'タオル': false,
    'クーラーボックス': false,
    'お水': false,
  };

  Map<String, IconData> icons = {
    '長袖シャツと長ズボン': FontAwesomeIcons.shirt,
    '虫よけスプレー': FontAwesomeIcons.bug,
    '日焼け止め': FontAwesomeIcons.sun,
    '帽子': FontAwesomeIcons.redhat,
    'ウェットティッシュ': FontAwesomeIcons.boxTissue,
    'タオル': FontAwesomeIcons.rug,
    'クーラーボックス': FontAwesomeIcons.box,
    'お水': FontAwesomeIcons.bottleWater,
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
                    colors: [Colors.white70, Colors.black12]),
              ),
              child: Image.asset("assets/background/fruits_line.png",
                  fit: BoxFit.cover),
            ),

            //2階　コンテンツ

            SizedBox(height: kToolbarHeight + 10),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    // shrinkWrap: true,
                    children: belongings.keys.map((String key) {
                      return CheckboxListTile(
                        activeColor:Colors.lightBlue,
                        side: BorderSide(color: Colors.black54, width: 2.0),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              key,
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
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(icons[key], color: Colors.lightBlue,),
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
          ),);
  }
}
