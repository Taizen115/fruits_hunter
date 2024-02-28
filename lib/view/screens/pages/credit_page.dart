import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/main.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../style/style.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        leading: TextButton(
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "クレジット表記",
          style: TextStyle(
            fontFamily: ThirdFont,
            fontSize: 30.0,
            color: Colors.white,
          ),
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
            child: Image.asset("assets/background/fruit_blue.png",
                fit: BoxFit.cover),
          ),

          //2階　コンテンツ
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(20.0),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                    text: "写真・イラスト\n",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: ThirdFont,
                        color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Topページ: Pexelsより引用.\n"
                            "果物一覧ページ: 写真AC, イラストACより引用.\n"
                            "クイズページ: 写真AC, イラストACより引用.\n"
                            "持ち物ページ: イラストACより引用.\n"
                            "マナーページ:イラストACより引用.\n"
                            "クレジットページ: イラストACより引用.\n",
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      TextSpan(
                        text: "フォント・アイコン名\n",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: ThirdFont,
                            color: Colors.blue),
                      ),
                      TextSpan(
                        text: "Google Font.\n"
                            "FontAwesomeIcon.",
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
