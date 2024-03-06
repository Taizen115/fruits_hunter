import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/view/components/belongings_control.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../main.dart';
import '../../../style/style.dart';

class BelongingsPage extends StatefulWidget {
  @override
  State<BelongingsPage> createState() => _BelongingsPageState();
}

class _BelongingsPageState extends State<BelongingsPage> {
  // Map<String, bool> belongings = {
  //   '長袖の服': false,
  //   '虫よけスプレー': false,
  //   '日焼け止め': false,
  //   '帽子': false,
  //   'ウェットティッシュ': false,
  //   'タオル': false,
  //   'クーラーボックス': false,
  //   '飲み物': false,
  // };

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
  void initState() {
    super.initState();
    initAd();
  }

  //広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: FaIcon(FontAwesomeIcons.eraser),
            backgroundColor: Colors.lightBlue,

            //TODO checkBoxを全て外す
            onPressed: () {
              BelongingsControl.belongings.forEach((key, value) {
                if (value == true) {
                  BelongingsControl.belongings[key] = false;
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

            Column(
              children: [
                Gap(kToolbarHeight + 10),
                Center(
                  child: (adManager.bannerAd == null)
                      ? Container(
                          width: 0.0,
                          height: 0.0,
                        )
                      : Container(
                          width: adManager.bannerAd!.size.width.toDouble(),
                          height: adManager.bannerAd!.size.height.toDouble(),
                          child: Center(
                            child: AdWidget(
                              ad: adManager.bannerAd!,
                            ),
                          ),
                        ),
                ),
                Gap(20),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: BelongingsControl.belongings.keys.map((String key) {
                        return CheckboxListTile(
                          activeColor: Colors.lightBlue,
                          side: BorderSide(color: Colors.black54, width: 2.0),
                          title: Row(
                            children: [
                              AutoSizeText(
                                key,
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  decoration: BelongingsControl.belongings[key] ?? false
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
                          value: BelongingsControl.belongings[key],
                          onChanged: (bool? value) {
                            setState(() {
                              BelongingsControl.belongings[key] = value!;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
