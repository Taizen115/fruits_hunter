import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/db/database.dart';
import 'package:fruits_hunter/main.dart';
import 'package:gap/gap.dart';

import '../../../style/style.dart';

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
  bool isExplained = false;
  bool isNextQuestioned = false;

  List<Question> questions = [];
  List<String> choices = ["", "", "", ""];
  List<Question> quizList = [];

  int _index = 0;
  late Question? _currentQuestion;

  @override
  void initState() {
    super.initState();
    _getQuestions();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final statusBarHeight = mediaQueryData.viewPadding.top;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "雑学クイズ",
          style: TextStyle(fontFamily: MainFont),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/test_background.jpg",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Gap(kToolbarHeight + statusBarHeight + 20),
              //TODO データ表示部分
              _dataPart(),

              Gap(50),

              //TODO 問題表示部分
              _showQuestion(),

              Gap(20),

              //TODO 選択肢表示部分
              _showChoices(),
            ],
          ),

          //TODO 正解不正解ボタン
          _correctIncorrectImage(),
          //
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
                numberOfRemaining.toString(),
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                numberOfHunt.toString(),
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
            ),
            Center(
              child: Text(
                getRate.toString(),
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
    return Bubble(
      margin: BubbleEdges.only(top: 10),
      color: Colors.white70,
      child: Text(question),
    );
  }

  //TODO 選択肢部分
  _showChoices() {
    return Table(
      children: [
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => _checkAnswer(),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.leftCenter,
                  color: Colors.brown[300],
                  child: Text(choices[0]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => _checkAnswer(),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.brown[300],
                  child: Text(choices[1]),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => _checkAnswer(),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.leftCenter,
                  color: Colors.brown[300],
                  child: Text(choices[2]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => _checkAnswer(),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  nip: BubbleNip.rightCenter,
                  color: Colors.brown[300],
                  child: Text(choices[3]),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _getQuestions() async {
    questions = await database.quizList;
    setFruits();
  }

  //TODO 解説を出す
  _checkAnswer() {}

  //TODO 正解不正解ボタン
  Widget _correctIncorrectImage() {
    if (isCorrectIncorrectImageEnabled) {
      if (isCorrect) {
        return Center(
          child: Image.asset("assets/images/correct.png"),
        );
      }
      return Center(
        child: Image.asset("assets/images/incorrect"),
      );
    } else {
      return Container();
    }
  }

  //TODO 解説
  Widget _showExplanation() {
    return Column(
      children: [
        Bubble(
          margin: BubbleEdges.only(top: 10),
          color: Colors.white70,
          child: Text(explanation),
        ),
        Gap(20),
        Center(
          child: ElevatedButton(
            child: Text("Next Fruits!"),
            onPressed: () {
              // getRate = (numberOfHunt /
              //     (widget.numberOfQuestions - numberOfRemaining) *
              //     100)
              //     .toInt();
              setFruits();
            },
          ),
        )
      ],
    );
  }

  //TODO 問題を出す
  void setFruits() {
    _currentQuestion = questions[_index];
    setState(() {
      isCorrectIncorrectImageEnabled = false;
      isExplained = false;
      isNextQuestioned = false;
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

      choices.shuffle();
    });

    numberOfRemaining--;

    _index += 1;
  }
}
