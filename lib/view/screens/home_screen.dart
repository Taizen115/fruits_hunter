import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/db/database.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:fruit_hunter/view/screens/pages/list_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../main.dart';
import 'pages/belongings_page.dart';
import 'pages/credit_page.dart';
import 'pages/manners_page.dart';
import 'pages/quiz_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//"パーソナライズされた広告の表示を許可して頂けるかどうかを次のダイアログで選択してください。"
//"\n\n許可頂くことで興味関心の低い広告の表示を減らすことができます。"
//"\n\nこれによってお客様の個人情報が取得されることはありませんのでご安心ください。"



class _HomeScreenState extends State<HomeScreen> {

  List<Question> quizList = [];

  //追加
  List<Fruit> allFruitsList = [];

  @override
  void initState() {
    super.initState();
    //追加
    _getFruitsList();
    initAd();
    if (Platform.isIOS) initAtt();
  }

  //ATT
  void initAtt() async {
    final attStatus = await AppTrackingTransparency.trackingAuthorizationStatus;
    if (attStatus == TrackingStatus.notDetermined) {
      // Show a custom explainer dialog before the system dialog
      await showCustomTrackingDialog(context);
      // Wait for dialog popping animation
      await Future.delayed(const Duration(milliseconds: 200));
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  }

  //ユーザーに対する個人情報の但し書き

  Future<void> showCustomTrackingDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
            S.of(context).Ado
            // '広告の表示について'
          ),
        content: Text(
          S.of(context).AdoText
            // "パーソナライズされた広告の表示を許可して頂けるかどうかを次のダイアログで選択してください。"
            //     "\n\n許可頂くことで興味関心の低い広告の表示を減らすことができます。"
            //     "\n\nこれによってお客様の個人情報が取得されることはありませんのでご安心ください。"
           ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              S.of(context).Next,
                // '次にすすむ'
            ),
          ),
        ],
      ),
    );
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
    currentLanguage = Localizations.localeOf(context).languageCode;

    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        //コンシェルジュの写真のTop Page
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
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
                Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () => _goCreditPage(),
                            child: Icon(
                              FontAwesomeIcons.copyright,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: AutoSizeText(
                          "Dear",
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 50.0,
                              color: Colors.white60),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: AutoSizeText(
                          "Fruit",
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 60.0,
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: AutoSizeText(
                          "Picker",
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: MainFont,
                              fontSize: 50.0,
                              color: Colors.grey),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        //Top Page の宣伝文句
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: AutoSizeText(
              S.of(context).Catchphrase,
              // "どのような果物狩りの手伝いが\n必要でしょうか？ ",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontFamily: MainFont,
              ),
            ).animate().fade(delay: 500.ms).scale().then(),
          ),
        ),
        //選択肢部分
        _choicePart(),


        //広告
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
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
        ),

        //バージョン記載
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "'FruitPicker' ver 1.1.0 ©Taylors Guild, N.P.O",
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ]),
    ));
  }

  //選択ボタン
  Widget _choicePart() {
    return Table(
      children: [
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goListPage(),
                child: AutoSizeText(
                  S.of(context).List,
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black54,
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goMannersPage(),
                child: AutoSizeText(
                 S.of(context).Manners,
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black54,
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _goBelogingsPage(),
                child: AutoSizeText(
                  S.of(context).Belongings,
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
                onPressed: () => _selectNumberOfQuiz(),
                child: AutoSizeText(
                  S.of(context).Quiz,
                  style: TextStyle(fontSize: 25.0),
                )),
          ),
        ]),
      ],
    ).animate().fade(delay: 1000.ms).scale().then(delay: 500.ms);
  }

  //クイズを何問解くかのダイアログ
  _selectNumberOfQuiz() {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (_) => AlertDialog(
              title: Text(
                S.of(context).QuestionCount,
                style: TextStyle(fontSize: 25.0),
              ),
              content: Text(
                S.of(context).HowManyQuestions,
                style: TextStyle(fontSize: 20.0),
              ),
              actions: [
                TextButton(
                  child: Text(
                    S.of(context).TenQuestions,
                    style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                  ),
                  onPressed: () => _goQuizPage(context, 10),
                ),
                TextButton(
                  child: Text(
                    S.of(context).TwentyQuestions,
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                  onPressed: () => _goQuizPage(context, 20),
                ),
                TextButton(
                  child: Text(
                    S.of(context).ThirtyQuestions,
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  onPressed: () => _goQuizPage(context, 30),
                ),
              ],
            ));
  }

  //4択の1つ、果物一覧ページに飛ぶ
  _goListPage() async {
    await adManager.disposeBannerAd();

    //allFruitsList.isEmpty: allFruitsList が空かどうかを判定しています
    // データベースからフルーツリストを取得し、allFruitsList に代入しています。await キーワードは、非同期処理であることを示しています。
    if (allFruitsList.isEmpty) {
      allFruitsList = await database.fruitsList;
    }

    if (allFruitsList.isEmpty) {
      Fluttertoast.showToast(
          msg: S.of(context).GetData);
          //"[Home]データが取得できませんでした。申し訳ありませんが画面を一旦閉じて再度実行してください");
    }

    Navigator.push(
      //全ての果物リストを渡す
      context,
      MaterialPageRoute(
        builder: (context) => ListPage(
          allFruitsList: allFruitsList,
        ),
      ),
    );
    //initAd();
  }

  //4択の1つ、クイズ画面に飛ぶ
  _goQuizPage(BuildContext context, int numberOfQuestion) async {
    await adManager.disposeBannerAd();
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => QuizPage(
                  numberOfQuestions: numberOfQuestion,
                )));
    //initAd();
  }

  //4択の1つ、持ち物ページに飛ぶ
  _goBelogingsPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BelongingsPage()));
    //initAd();
  }

  //4択の1つ、マナーページに飛ぶ
  _goMannersPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MannersPage()));
    //initAd();
  }

  //どのサイトを参考にしたかがわかるページに飛ぶ
  _goCreditPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreditPage()));
    initAd();
  }

  void _getFruitsList() async {
    allFruitsList = await database.fruitsList;
    print("allFruitsList$allFruitsList");
    print("allFruitsList.length${allFruitsList.length}");
  }
}
