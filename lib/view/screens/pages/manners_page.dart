import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../main.dart';

class MannersPage extends StatefulWidget {
  @override
  State<MannersPage> createState() => _MannersPageState();
}

class _MannersPageState extends State<MannersPage> {
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
    final Map<String, String> mannersQuestions = {
      "0": "果物狩りで, 事前に何を調べたらいいですか？",
      "1": "農園で果物狩りをするとき, 走り回ったりしてもいいでしょうか？ ",
      "2": "果物を摘むときに, 配慮することはありますか？",
      "3": "当日雨が降った場合, どうしたらいいですか？",
      "4": "予約はした方がいいですか？ ",
      "5": "どういった服装をして, 出掛けたらいいですか？",
      "6": "何か持って行った方がいいものはありますか？",
      "7": "農園のルールは, どうやって知ったらいいですか？"
    };

    final Map<String, String> mannersAnswers = {
      "0": "品種名と旬の時期と産地によって, 果物の味は変動するので, 事前に調べてから果物狩りに行くのがポイントです.",
      "1": "農園では, 走り回ったり騒いだりせず, 周囲に配慮して楽しく果物狩りを過ごして頂けると有難いです. ",
      "2": "果物を摘むときは, 農園の方のお話を聞いて, 木などを傷つけないように配慮して頂けると有難いです. ",
      "3":
          "雨が降ったら, 電話で農園に連絡した方が良いかもしれません. また, 全天候型の農園もあるので, そういった農園を選ぶのもポイントです. ",
      "4": "予約は不要な所もございますが, 農園に事前に電話かメールをして予約なさった方が確実かと思われます. ",
      "5": "オシャレな格好をして出かけるのも素晴らしいですが, それに加えて汚れても大丈夫で, 動きやすい服装がおすすめです. ",
      "6":
          "お供のアイテムとして, 夏場は虫除けスプレー, 日焼け止め, タオル, クーラーボックスがあると良いと思われます. あと, 食べる時にウェットティッシュがあると, 尚良いです. ",
      "7": "農園の方に直接尋ねるのが良いと思われます. それぞれのルールを守って, 満足できる果物狩りを楽しんでください. "
    };
    return Scaffold(
      backgroundColor: Colors.lightBlue,
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
        title: Text("マナー", style: TextStyle(fontFamily: ThirdFont, fontSize: 30.0, color: Colors.white,),),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50.0),
                        height: 1500.0,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      Column(
                        children: [
                          Center(
                            child:
                                Image.asset("assets/images/enjoy_picking.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                color: Colors.white70,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: mannersQuestions.length,
                                    itemBuilder: (context, index) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: ExpansionTile(
                                          backgroundColor: Colors.blue[400],
                                          title: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: AutoSizeText(
                                              mannersQuestions[
                                                  index.toString()]!,
                                              style: TextStyle(
                                                fontFamily: SubFont,
                                                fontSize: 20.0,
                                                color: Colors.black87,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          children: [
                                            ListTile(
                                              title: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: AutoSizeText(
                                                  mannersAnswers[
                                                      index.toString()]!,
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Gap(20),
          //広告
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
    );
  }
}
