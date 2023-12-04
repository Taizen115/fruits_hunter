import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/db/database.dart';
import 'package:fruits_hunter/main.dart';
import 'package:gap/gap.dart';

import '../../../style/style.dart';
import '../home_screen.dart';
import '../king_screen.dart';

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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: TextButton(
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white70,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "クイズ",
          style: TextStyle(
            fontFamily: MainFont,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/background/mikan_tree.png",
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Gap(100),
                //TODO データ表示部分
                _dataPart(),

                Gap(50),

                //TODO 問題表示部分
                _showQuestion(),

                Gap(50),

                //TODO 選択肢表示部分
                _showChoices(),
              ],
            ),
          ),

          //TODO 正解不正解ボタン
          _correctIncorrectImage(),

          //TODO 解説
          _showExplanation(),
        ],
      ),
    );
  }

  //TODO データ表示部分
  Widget _dataPart() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 12.0,
      ),
      child: Table(
        children: [
          TableRow(children: [
            Center(
              child: Text(
                "残りの果物",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                "獲得果物数",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                "獲得率",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
          ]),
          TableRow(children: [
            Center(
              child: Text(
                "${numberOfRemaining.toString()} 個",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                "${numberOfHunt.toString()} 個",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                "${getRate.toString()} ％",
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
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
      return Bubble(
        margin: BubbleEdges.only(top: 10),
        color: Colors.white70,
        child: Text(
          question,
          style: TextStyle(fontFamily: MainFont, fontSize: 35.0),
        ),
      );
    else {
      return Container();
    }
  }

  //TODO 選択肢部分
  _showChoices() {
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
                    color: Colors.blue[200],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[0]),
                      child: Text(
                        choices[0],
                        style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color:Colors.white),
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
                    color: Colors.green[200],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[1]),
                      child: Text(
                        choices[1],
                        style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color:Colors.white),
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
                    color: Colors.red[200],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[2]),
                      child: Text(
                        choices[2],
                        style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color:Colors.white),
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
                    color: Colors.purple[200],
                    child: TextButton(
                      onPressed: () => _checkAnswer(choices[3]),
                      child: Text(
                        choices[3],
                        style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color:Colors.white),
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
              .fadeOut(duration: 2000.ms),
        );
      }
      return Center(
        child: Image.asset("assets/images/incorrect.png")
            .animate()
            .fadeOut(duration: 2000.ms),
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
            Gap(220),

            Bubble(
              margin: BubbleEdges.only(top: 10),
              color: Colors.white70,
              child: Text(
                "答え : ${answer}",
                style: TextStyle(fontFamily: SubFont, fontSize: 20.0, color: Colors.teal),
              ),
            ),

            Gap(20),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Bubble(
                margin: BubbleEdges.only(top: 10),
                color: Colors.teal,
                child: Text(
                  "解説 : \n${explanation}",
                  style: TextStyle(
                      fontFamily: MainFont,
                      fontSize: 25.0,
                  color: Colors.white70),
                ),
              ),
            ),
            Gap(20),
            Center(
              child: ElevatedButton(
                  child: Text(
                    "Next Fruits!",
                    style: TextStyle(fontFamily: SubFont, fontSize: 20.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.teal,
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                  onPressed: () {
                    if (numberOfRemaining == 0) {
                      if (numberOfHunt == 30) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KingScreen(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      }
                    } else {
                      setFruits();
                    }
                  }),
            ),
          ],
        ).animate().fade(duration: 500.ms).scale().then(delay: 500.ms),
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
}
