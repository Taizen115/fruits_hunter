import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';

class MannersPage extends StatefulWidget {
  @override
  State<MannersPage> createState() => _MannersPageState();
}

class _MannersPageState extends State<MannersPage> {
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
        elevation: 0,
        leading: TextButton(
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  height: 800.0,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "マナー",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: ThirdFont,
                          color: Colors.white),
                    ),
                    Center(
                      child: Image.asset("assets/images/enjoy_picking.png"),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        color: Colors.white70,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: mannersQuestions.length,
                          itemBuilder: (context, index) {
                            return ExpansionTile(
                              backgroundColor: Colors.blue[500],
                              title: Text(
                                mannersQuestions[index.toString()]!,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 20.0,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    mannersAnswers[index.toString()]!,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
