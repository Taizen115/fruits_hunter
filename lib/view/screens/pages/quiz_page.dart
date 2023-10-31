import 'package:flutter/material.dart';
import 'package:fruits_hunter/db/quiz.dart';

import '../../../style/style.dart';

class QuizPage extends StatefulWidget {

  final numberOfQuestions;

  QuizPage({required this. numberOfQuestions});


  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> quizList = [];
  List<String> choices = ["", "", "", ""];

  //項目の初期化

  int numberOfRemaining = 0;
  int numberOfCorrect = 0;
  int correctRate = 0;

  //使用するデータの初期化

  String question = "";
  String answer = "";
  String choice1 = "";
  String choice2 = "";
  String choice3 = "";
  String explanation = "";

  //動作

  bool isCorrectIncorrectImageEnabled = false;
  bool isCorrect = false;
  bool isNextQuestioned = false;

  @override
  void initState() {
    super.initState();

    numberOfCorrect = 0;
    correctRate = 0;
    numberOfRemaining = widget.numberOfQuestions;
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
        foregroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          "雑学クイズ",
          style: TextStyle(fontFamily: MainFont),
        ),
      ),
    );
  }
}