import 'package:flutter/material.dart';

import '../../style/style.dart';
import 'home_screen.dart';

class KingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: TextButton(
          child: Text(
            "戻る",
            style: TextStyle(
                fontFamily: SubFont, fontSize: 15.0, color: Colors.black),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "おめでとうございます！",
          style: TextStyle(
            fontFamily: MainFont,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/all_fruits.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
