import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/db/database.dart';
import 'package:fruits_hunter/main.dart';
import 'package:gap/gap.dart';

import '../../../style/style.dart';
import '../../components/choice_button.dart';

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

  // List<Question> questions = [];
  List<String> choices = ["", "", "", ""];

  List<Question> quizList = [];

  int index = 0;

  @override
  void initState() {
    super.initState();
    _getQuestion();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "雑学クイズ",
          style: TextStyle(fontFamily: MainFont),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Gap(20),
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
          // _correctIncorrectImage(),
          //
          // //TODO 解説
          // _showExplanation(),
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
    return Text(
      question,
      style:
          TextStyle(fontSize: 20.0, fontFamily: MainFont, color: Colors.black),
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
              child: Bubble(
                margin: BubbleEdges.only(top: 10),
                nip: BubbleNip.leftCenter,
                color: Colors.blue[200],
                child: Text(
                  choices[0]),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ChoiceButton(
                  onPressed: () => checkAnswer(choices[1]),
                  label: choices[1],
                  color: Colors.brown),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ChoiceButton(
                  onPressed: () => checkAnswer(choices[2]),
                  label: choices[2],
                  color: Colors.brown),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ChoiceButton(
                  onPressed: () => checkAnswer(choices[3]),
                  label: choices[3],
                  color: Colors.brown),
            ),
          ],
        ),
      ],
    );
  }
  
  
  

  void _getQuestion() async {
    quizList = await database.quizList;
    setState(() {});
  }

  checkAnswer(String choic) {}
}
