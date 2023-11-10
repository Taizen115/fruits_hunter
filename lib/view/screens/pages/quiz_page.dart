import 'package:flutter/material.dart';
import '../../../style/style.dart';

class QuizPage extends StatefulWidget {

  // final numberOfQuestions;
  //
  // QuizPage({required this. numberOfQuestions});


  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<String> choices = ["", "", "", ""];

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
    );
  }
}