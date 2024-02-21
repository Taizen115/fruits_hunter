import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/db/database.dart';
import 'package:fruit_hunter/main.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../style/style.dart';
import '../grades_screen.dart';

class QuizPage extends StatefulWidget {
  final numberOfQuestions;

  QuizPage({
    required this.numberOfQuestions,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int numberOfRemaining = 0;
  int numberOfHunt = 0;
  int getRate = 0;

  String question = "";
  String answer = "";
  String choice1 = "";
  String choice2 = "";
  String choice3 = "";
  String explanation = "";

  bool isCorrectIncorrectImageEnabled = false;
  bool isCorrect = false;
  bool isExplained = true;
  bool isNextQuestioned = false;

  List<Question> questions = [];
  List<String> choices = ["", "", "", ""];
  List<Question> quizList = [];

  int _index = 0;
  late Question? _currentQuestion;

  @override
  void initState() {
    super.initState();
    numberOfHunt = 0;
    getRate = 0;
    numberOfRemaining = widget.numberOfQuestions;
    _getQuestion();
    initAd();
  }

  //広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.teal,
          centerTitle: true,
          leading: TextButton(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.teal,
            ),
            onPressed: () => _finishQuiz(),
          ),
          title: Row(
            children: [
              Image.asset(
                "assets/images/four_question.png",
                width: 100.0,
                height: 100.0,
              ),
              Gap(30),
              Text(
                "クイズ",
                style: TextStyle(
                    fontFamily: MainFont, fontSize: 30.0, color: Colors.teal),
              ),
            ],
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
                    colors: [Colors.white70, Colors.black12]),
              ),
              child: Image.asset(
                "assets/background/mikan_tree.png",
                fit: BoxFit.cover,
              ),
            ),

            //2階　コンテンツ

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Gap(kToolbarHeight + 15.0),
                  //TODO データ表示部分
                  Expanded(flex: 2, child: _dataPart()),

                  //TODO 問題表示部分
                  Expanded(flex: 3, child: _showQuestion()),

                  Spacer(),

                  //TODO 選択肢表示部分
                  Expanded(flex: 3, child: _showChoices()),

                  //Spacer(),

                  //TODO 広告
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: (adManager.bannerAd == null || isExplained)
                          ? Container(
                              width: 0.0,
                              height: 0.0,
                            )
                          : Container(
                              width: adManager.bannerAd!.size.width.toDouble(),
                              height:
                                  adManager.bannerAd!.size.height.toDouble(),
                              child: Center(
                                child: AdWidget(
                                  ad: adManager.bannerAd!,
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),

            //TODO 正解不正解ボタン
            _correctIncorrectImage(),

            //TODO 解説
            _showExplanation(),
          ],
        ),
      ),
    );
  }

  //TODO データ表示部分
  Widget _dataPart() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
      ),
      child: Table(
        children: [
          TableRow(children: [
            Text(
              "残りの果物",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            Center(
              child: Text(
                "獲得果物数",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "獲得率",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
          ]),
          TableRow(children: [
            Center(
              child: Text(
                "${numberOfRemaining.toString()} 個",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "${numberOfHunt.toString()} 個",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "${getRate.toString()} ％",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            )
          ])
        ],
      ),
    );
  }

  //TODO 問題表示部分
  Widget _showQuestion() {
    if (isNextQuestioned)
      return ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AutoSizeText(
              question,
              maxLines: 4,
              style: TextStyle(fontSize: 50.0),
            ),
          ),
        ),
      );
    else {
      return Container();
    }
  }

  //TODO 選択肢部分
  Widget _showChoices() {
    if (isNextQuestioned) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    color: Colors.red[300],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[0]),
                      child: AutoSizeText(
                        choices[0],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(30),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    color: Colors.blue[300],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[1]),
                      child: AutoSizeText(
                        choices[1],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(30),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    color: Colors.yellow[800],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[2]),
                      child: AutoSizeText(
                        choices[2],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(30),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    color: Colors.green[500],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[3]),
                      child: AutoSizeText(
                        choices[3],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  //TODO データベースから問題を出す
  void _getQuestion() async {
    questions = await database.quizList;
    questions.shuffle();
    setFruits();

    isCorrectIncorrectImageEnabled = false;
    isCorrect = false;
    isNextQuestioned = true;
    isExplained = false;

    setState(() {});
  }

  //TODO 正解不正解ボタン
  Widget _correctIncorrectImage() {
    if (isCorrectIncorrectImageEnabled) {
      if (isCorrect) {
        return Center(
          child: Image.asset("assets/images/correct.png")
              .animate()
              .fadeOut(duration: 500.ms),
        );
      }
      return Center(
        child: Image.asset("assets/images/incorrect.png")
            .animate()
            .fadeOut(duration: 500.ms),
      );
    } else {
      return Container();
    }
  }

  //TODO 正解不正解をチェックする
  void _checkAnswer(String textPart) {
    if (answer == textPart) {
      isCorrect = true;
      isCorrectIncorrectImageEnabled = true;
      isExplained = true;
      isNextQuestioned = false;
      numberOfHunt += 1;
    } else {
      isCorrect = false;
      isCorrectIncorrectImageEnabled = true;
      isExplained = true;
      isNextQuestioned = false;
    }

    getRate =
        (numberOfHunt / (widget.numberOfQuestions - numberOfRemaining) * 100)
            .toInt();

    setState(() {});
  }

  //TODO 解説
  Widget _showExplanation() {
    if (isExplained) {
      return Container(
        child: Column(
          children: [
            Gap(kToolbarHeight + 100),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      "答え : ${answer}",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.teal),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),

            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AutoSizeText(
                        "解説 : \n${explanation}",
                        maxLines: 6,
                        style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.teal),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),

            Expanded(
              flex: 1,
              child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      numberOfRemaining == 0 ? "結果発表！" : "Next Fruit!",
                      maxLines: 1,
                      style: TextStyle(fontFamily: SubFont, fontSize: 30.0),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                  onPressed: () {
                    if (numberOfRemaining == 0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GradesScreen(
                                  numberOfHunt: numberOfHunt,
                                  getRate: getRate)));
                    } else {
                      setFruits();
                    }
                  }),
            ),
            Spacer(),
          ],
        ).animate().fade(duration: 500.ms).scale().then(),
      );
    } else {
      return Container();
    }
  }

  //TODO 問題を出す
  void setFruits() {
    _currentQuestion = questions[_index];
    setState(() {
      isCorrectIncorrectImageEnabled = false;
      isExplained = false;
      isNextQuestioned = true;
      question = _currentQuestion!.question;
      answer = _currentQuestion!.answer;
      choice1 = _currentQuestion!.choice1;
      choice2 = _currentQuestion!.choice2;
      choice3 = _currentQuestion!.choice3;
      explanation = _currentQuestion!.explanation;

      choices[0] = answer;
      choices[1] = choice1;
      choices[2] = choice2;
      choices[3] = choice3;

      // questions.shuffle();
      choices.shuffle();
    });

    numberOfRemaining--;

    _index += 1;
  }

  _finishQuiz() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
              title: Text(
                "クイズの終了",
                style: TextStyle(fontSize: 25.0),
              ),
              content: Text(
                "クイズを終了してもよろしいでしょうか？",
                style: TextStyle(fontSize: 20.0),
              ),
              actions: [
                TextButton(
                  child: Text(
                    "キャンセル",
                    style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                  child: Text(
                    "OK",
                    style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }
}
