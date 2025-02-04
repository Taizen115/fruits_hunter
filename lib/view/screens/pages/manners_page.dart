import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../generated/l10n.dart';
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
    final List mannersQuestions = [
      S.of(context).mannerQuestions0,
      S.of(context).mannerQuestions1,
      S.of(context).mannerQuestions2,
      S.of(context).mannerQuestions3,
      S.of(context).mannerQuestions4,
      S.of(context).mannerQuestions5,
      S.of(context).mannerQuestions6,

      // "果樹園で果物狩りをするとき, 走り回ったりしてもいいでしょうか？",
      // "果物を摘むときに, 配慮することはありますか？",
      // "当日雨が降った場合, どうしたらいいですか？",
      // "予約はした方がいいですか？",
      // "どういった服装をして, 出掛けたらいいですか？",
      // "何か持って行った方がいいものはありますか？",
      // "果樹園のルールは, どうやって知ったらいいですか？",
    ];

    final List mannersAnswers = [
      S.of(context).mannerAnswers0,
      S.of(context).mannerAnswers1,
      S.of(context).mannerAnswers2,
      S.of(context).mannerAnswers3,
      S.of(context).mannerAnswers4,
      S.of(context).mannerAnswers5,
      S.of(context).mannerAnswers6,

      // "果樹園では, 走り回ったり騒いだりせず, 周囲に配慮して楽しく果物狩りを過ごして頂けると有難いです. ",
      // "果物を摘むときは, 果樹園の方のお話を聞いて, 木などを傷つけないように配慮して頂けると有難いです. ",
      // "雨が降ったら, 電話で果樹園に連絡した方が良いかもしれません. また, 全天候型の農園もあるので, そういった果樹園を選ぶのもポイントです. ",
      // "予約は不要な所もございますが, 果樹園に事前に電話かメールをして予約なさった方が確実かと思われます. ",
      // "オシャレな格好をして出かけるのも素晴らしいですが, それに加えて汚れても大丈夫で, 動きやすい服装がおすすめです. ",
      // "お供のアイテムとして, 夏場は虫除けスプレー, 日焼け止め, タオル, クーラーボックスがあると良いと思われます. あと, 食べる時にウェットティッシュがあると, 尚良いです. ",
      // "果樹園の方に直接尋ねるのが良いと思われます. それぞれのルールを守って, 満足できる果物狩りを楽しんでください.",
    ];

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
        title: Text(
          S.of(context).Manners,
          style: TextStyle(
            fontFamily: ThirdFont,
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                //1階
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),

                //2階
                Column(
                  children: [
                    Center(
                      child: Image.asset("assets/images/enjoy_picking.png"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, right: 8.0, left: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                //physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: mannersQuestions.length,
                                itemBuilder: (context, index) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: ExpansionTile(
                                      // trailing: FaIcon(FontAwesomeIcons.user),
                                      backgroundColor: Colors.blue[400],
                                      title: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AutoSizeText(
                                          mannersQuestions[index].toString(),
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
                                            padding: const EdgeInsets.all(5.0),
                                            child: AutoSizeText(
                                              mannersAnswers[index].toString(),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(20),
          //広告
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
        ],
      ),
    );
  }
}