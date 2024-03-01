import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../main.dart';
import 'home_screen.dart';

class AllCorrectScreen extends StatefulWidget {
  final int numberOfHunt;
  final int getRate;

  AllCorrectScreen({required this.numberOfHunt, required this.getRate});

  @override
  State<AllCorrectScreen> createState() => _AllCorrectScreenState();
}

class _AllCorrectScreenState extends State<AllCorrectScreen> {
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
                "全問正解",
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
                  child: Image.asset("assets/background/firework.png",
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
                          color: Colors.transparent,
                          elevation: 20.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: AutoSizeText(
                              "全問正解、おめでとうございます！素晴らしいです."
                              "\nお疲れさまでした.",
                              maxLines: 4,
                              style: TextStyle(
                                  fontSize: 50.0, color: Colors.white),
                            ),
                          ),
                        ),
                        Spacer(),
                        Card(
                          color: Colors.transparent,
                          elevation: 20.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: AutoSizeText(
                              "果物の知識について, 少しお助けできたでしょうか？\n今度は, 実際の果物狩りで, 楽しんでみてください.",
                              maxLines: 4,
                              style: TextStyle(
                                  fontSize: 50.0, color: Colors.white70),
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: (adManager.bannerAd! == null)
                              ? Container(
                                  width: 0.0,
                                  height: 0.0,
                                )
                              : Container(
                                  width:
                                      adManager.bannerAd!.size.width.toDouble(),
                                  height: adManager.bannerAd!.size.height
                                      .toDouble(),
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
