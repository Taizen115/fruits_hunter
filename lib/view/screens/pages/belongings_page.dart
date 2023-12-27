import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';

class BelongingsPage extends StatefulWidget {
  @override
  State<BelongingsPage> createState() => _BelongingsPageState();
}

class _BelongingsPageState extends State<BelongingsPage> {
  Map<String, bool> belongings = {
    '長袖シャツ or ラッシュガード': false,
    '長ズボン': false,
    '虫よけスプレー': false,
    '日焼け止め': false,
    '帽子': false,
    'ウェットティッシュ': false,
    'タオル': false,
    'クーラーボックス': false,
    'お水': false,
  };

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
            floatingActionButton: FloatingActionButton(
                child: FaIcon(FontAwesomeIcons.eraser),
                backgroundColor: Colors.indigoAccent,

                //TODO checkBoxを全て外す
                onPressed: () {
                  belongings.forEach((key, value) {
                    if (value == true) {
                      belongings[key] = false;
                    }
                    setState(() {
                    });
                  });
                }),
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
            body: ListView(
              children: belongings.keys.map((String key) {
                return CheckboxListTile(
                  side: BorderSide(color: Colors.indigoAccent, width: 2),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    key,
                    style: TextStyle(
                      fontFamily: SubFont,
                      fontSize: 20.0,
                      color: Colors.indigo,
                      decoration: belongings[key] ?? false
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  secondary: FaIcon(FontAwesomeIcons.appleWhole),
                  controlAffinity: ListTileControlAffinity.platform,
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
        ),
      ],
    );
  }
}
