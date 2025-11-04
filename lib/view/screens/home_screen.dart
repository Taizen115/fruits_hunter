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
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import 'credit_screen.dart';
import 'fruit_record_master_screen.dart';
import 'list_screen.dart';
import 'manners_screen.dart';
import 'quiz_screen.dart';

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
        title: Text(S.of(context)!.ado
            // '広告の表示について'
            ),
        content: Text(S.of(context)!.adoText
            // "パーソナライズされた広告の表示を許可して頂けるかどうかを次のダイアログで選択してください。"
            //     "\n\n許可頂くことで興味関心の低い広告の表示を減らすことができます。"
            //     "\n\nこれによってお客様の個人情報が取得されることはありませんのでご安心ください。"
            ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              S.of(context)!.next,
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
                            onPressed: () => showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    title: Text(
                                      S.of(context)!.options,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15.0),
                                    ),
                                    children: <Widget>[
                                      ///コンテンツ
                                      Row(
                                        children: [
                                          SimpleDialogOption(
                                            onPressed: () => _goCreditPage(),
                                            child: Text(
                                              S.of(context)!.credits,
                                              style: TextStyle(
                                                  //color: Colors.grey[700],
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.copyright,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SimpleDialogOption(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              _goReviewScreen();
                                            },
                                            child: Text(
                                              S.of(context)!.review,
                                              style: TextStyle(
                                                  //color: Colors.orange[300],
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                            child: Icon(
                              FontAwesomeIcons.bars,
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
              S.of(context)!.catchphrase,
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
            "'FruitPicker' ver 1.3.0 ©Taylors Guild, N.P.O",
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
                  S.of(context)!.list,
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
                onPressed: () => _goMannerPage(),
                child: AutoSizeText(
                  S.of(context)!.manner,
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
                onPressed: () => _goFruitRecordPage(),
                child: AutoSizeText(
                  S.of(context)!.memory,
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
                  S.of(context)!.quiz,
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
                S.of(context)!.questionCount,
                style: TextStyle(fontSize: 25.0),
              ),
              content: Text(
                S.of(context)!.howManyQuestions,
                style: TextStyle(fontSize: 20.0),
              ),
              actions: [
                TextButton(
                  child: Text(
                    S.of(context)!.tenQuestions,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFb87333),
                    ),
                  ),
                  onPressed: () => _goQuizPage(context, 10),
                ),
                TextButton(
                  child: Text(
                    S.of(context)!.twentyQuestions,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFc0c0c0),
                    ),
                  ),
                  onPressed: () => _goQuizPage(context, 20),
                ),
                TextButton(
                  child: Text(
                    S.of(context)!.thirtyQuestions,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFe6b422),
                    ),
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
      Fluttertoast.showToast(msg: S.of(context)!.getData);
      //"[Home]データが取得できませんでした。申し訳ありませんが画面を一旦閉じて再度実行してください");
    }

    Navigator.push(
      //全ての果物リストを渡す
      context,
      MaterialPageRoute(
        builder: (context) => ListScreen(
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
            builder: (context) => QuizScreen(
                  numberOfQuestions: numberOfQuestion,
                )));
    //initAd();
  }

  //4択の1つ、記録ページに飛ぶ
  _goFruitRecordPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => FruitRecordMasterScreen()));
    // initAd();
  }

  //4択の1つ、マナーページに飛ぶ
  _goMannerPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MannersScreen()));
    //initAd();
  }

  //どのサイトを参考にしたかがわかるページに飛ぶ
  _goCreditPage() async {
    await adManager.disposeBannerAd();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreditScreen()));
    initAd();
  }

  void _getFruitsList() async {
    allFruitsList = await database.fruitsList;
    print("allFruitsList$allFruitsList");
    print("allFruitsList.length${allFruitsList.length}");
  }

  // 機能	説明
  // isAvailable()	インストアレビューが可能か確認
  // requestReview()	アプリ内レビューを依頼
  // ストアURL生成	Android/iOS に応じてURLを分岐
  // canLaunchUrl() & launchUrl()	ストアに遷移
  // Fluttertoast	エラー時にユーザーに通知

  void _goReviewScreen() async {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      //inAppReview.requestReview();
      inAppReview.openStoreListing(appStoreId: "6473355614");
    } else {
      // フォールバックとしてストアに飛ばす
      final url = Platform.isAndroid
          ? 'https://play.google.com/store/apps/details?id=com.taylorsguild.fruit_hunter'
          : 'https://apps.apple.com/jp/app/%E6%9E%9C%E7%89%A9%E7%8B%A9%E3%82%8A%E3%83%8A%E3%83%93/id6473355614';


      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        Fluttertoast.showToast(msg: S.of(context)!.notLaunchStore);
      }
    }
  }
}
