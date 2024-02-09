import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/db/database.dart';
import 'package:fruit_hunter/main.dart';
import 'package:gap/gap.dart';
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

    //広告
    adManager.loadBannerAd();

    _getQuestion();
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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Gap(50),
                  //TODO データ表示部分
                  _dataPart(),

                  Gap(50),

                  //TODO 問題表示部分
                  _showQuestion(),

                  Gap(50),

                  //TODO 選択肢表示部分
                  Expanded(child: _showChoices()),

                  Gap(20),

                  //TODO 広告
                  Center(
                    child: Container(
                      color: Colors.teal,
                      width: 200.0,
                      height: 30.0,
                      child: Center(
                        child: Text(
                          "広告予定",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Gap(10),
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
        top: 20.0,
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
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              question,
              style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
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
      return Table(
        children: [
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 80,
                    color: Colors.red[300],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[0]),
                      child: Text(
                        choices[0],
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 80,
                    color: Colors.blue[300],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[1]),
                      child: Text(
                        choices[1],
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 80,
                    color: Colors.yellow[700],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[2]),
                      child: Text(
                        choices[2],
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 80,
                    color: Colors.green[500],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[3]),
                      child: Text(
                        choices[3],
                        style: TextStyle(
                            fontFamily: MainFont,
                            fontSize: 20.0,
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
            Gap(170),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "答え : ${answer}",
                    style: TextStyle(
                        fontFamily: SubFont,
                        fontSize: 20.0,
                        color: Colors.teal),
                  ),
                ),
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "解説 : \n${explanation}",
                      style: TextStyle(
                          fontFamily: MainFont,
                          fontSize: 25.0,
                          color: Colors.teal),
                    ),
                  ),
                ),
              ),
            ),
            Gap(20),
            Center(
              child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      numberOfRemaining == 0 ? "結果発表！" : "Next Fruit!",
                      style: TextStyle(fontFamily: SubFont, fontSize: 20.0),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
