import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:fruit_hunter/main.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../style/style.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.teal,
            centerTitle: true,
            leading: TextButton(
              child: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black87,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              S.of(context).Credits,
              style: TextStyle(
                fontFamily: ThirdFont,
                fontSize: 30.0,
                color: Colors.teal,
              ),
            ),
          ),

          //2階　コンテンツ
          body: Column(
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
                    text: S.of(context).PhotoIllustration,
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                        text: S.of(context).TopPage,
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                      TextSpan(
                        text: S.of(context).FontIcon,
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                      TextSpan(
                        text: S.of(context).GoogleFontFontAwesomeIcon,
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//クレジット表記
//写真・イラスト
//Topページ：Pexelsより引用
//果物一覧ページ, クイズページ: 写真AC, イラストACより引用
//持ち物ページ・マナーページ、クレジットページ : イラストACより引用
//
//フォント・アイコン名
//Google Font
//FontAwesomeIcon