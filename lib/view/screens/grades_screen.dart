import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../main.dart';
import 'home_screen.dart';

class GradesScreen extends StatefulWidget {
  final int numberOfHunt;
  final int getRate;

  GradesScreen({required this.numberOfHunt, required this.getRate});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {


  //広告
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
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.green[300],
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.green[300],
                ),
                onPressed: () => _goHomeScreen(context),
              ),
              title: Text(
                "クイズの成績",
                style: TextStyle(fontSize: 30.0),
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
                        colors: [Colors.black54, Colors.black12]),
                  ),
                  child: Image.asset("assets/background/fruit_table.png",
                      fit: BoxFit.cover),
                ),

                //2階　コンテンツ

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Gap(kToolbarHeight + 10),
                        Card(
                          color: Colors.teal,
                          elevation: 20.0,
                          child: Text(
                            "あなたの獲得した果物の数は, ${widget.numberOfHunt}個です."
                            "\nまた, 獲得率は, ${widget.getRate}%です."
                            "\nお疲れさまでした.",
                            style:
                                TextStyle(fontSize: 25.0, color: Colors.white),
                          ),
                        ),
                        Gap(50),
                        Card(
                          color: Colors.transparent,
                          shadowColor: Colors.white60,
                          child: Text(
                            "果物の知識について, 少しお助けできたでしょうか？\n今度は, 実際の果物狩りで, 楽しんでみてください.",
                            style:
                                TextStyle(fontSize: 25.0, color: Colors.white),
                          ),
                        ),
                        Gap(50),
                        Center(
                          child: (adManager.bannerAd! == null)
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _goHomeScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
