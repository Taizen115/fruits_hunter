import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fruit_hunter/db/database.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:fruit_hunter/view/screens/pages/list_page.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../main.dart';
import 'pages/belongings_page.dart';
import 'pages/manners_page.dart';
import 'pages/quiz_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> quizList = [];

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
  void dispose() {
    adManager.disposeBannerAd();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black54, Colors.black12]),
                    ),
                    child: Image.asset(
                      "assets/background/concierge.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Spacer(),
                      Text(
                        "Dear",
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 50.0,
                            color: Colors.white70),
                      ),
                      Text(
                        "Fruit",
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 60.0,
                            color: Colors.white),
                      ),
                      Text(
                        "Hunter",
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 40.0,
                            color: Colors.white70),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Gap(10),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "どのような果物狩りの手伝いが\n必要でしょうか？ ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25.0,
                fontFamily: MainFont,
              ),
            ).animate().fade(delay: 2500.ms).scale().then(),
          ),
        ),
        Gap(10),
        //選択肢部分
        _choicePart(),

        Gap(10),

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

        Gap(10),

        //バージョン記載
        Text(
          "'FruitHunter' ver 1.0.0 ©Taylors Guild, N.P.O",
          style: TextStyle(fontSize: 12.0),
        ),
        Gap(10),
      ]),
    ));
  }

  Widget _choicePart() {
    return Table(
      children: [
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goListPage(),
                child: Text(
                  "果物一覧",
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black54,
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _selectNumberOfQuiz(),
                child: Text(
                  "クイズ",
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black54,
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goBelogingsPage(),
                child: Text(
                  "持ち物",
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goMannersPage(),
                child: Text(
                  "マナー",
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
        ]),
      ],
    ).animate().fade(delay: 3500.ms).scale().then(delay: 3000.ms);
  }

  _selectNumberOfQuiz() {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (_) => AlertDialog(
              title: Text(
                "問題数",
                style: TextStyle(fontSize: 25.0),
              ),
              content: Text(
                "何問解きますか？",
                style: TextStyle(fontSize: 20.0),
              ),
              actions: [
                TextButton(
                  child: Text(
                    "10問",
                    style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                  ),
                  onPressed: () => _goQuizPage(context, 10),
                ),
                TextButton(
                  child: Text(
                    "20問",
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                  onPressed: () => _goQuizPage(context, 20),
                ),
                TextButton(
                  child: Text(
                    "30問",
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  onPressed: () => _goQuizPage(context, 30),
                ),
              ],
            ));
  }

  _goListPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
    initAd();
  }

  _goQuizPage(BuildContext context, int numberOfQuestion) async {
    await adManager.disposeBannerAd();
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => QuizPage(
                  numberOfQuestions: numberOfQuestion,
                )));
    initAd();
  }

  _goBelogingsPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BelongingsPage()));
    initAd();
  }

  _goMannersPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MannersPage()));
    initAd();
  }
}
