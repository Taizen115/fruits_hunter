import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/view/screens/home_screen.dart';

import '../../style/style.dart';

class KingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/trees.png"),
          fit: BoxFit.cover
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "果物雑学博士",
            style: TextStyle(
              fontFamily: MainFont,
              fontSize: 25.0,
            ),
          ),
          leading: TextButton(
            child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          ),

        ),
        body: Column(
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/all_fruits.png",
                fit: BoxFit.fitWidth,
              ),
            ).animate().fade(duration: 3000.ms).scale(),

            Align(
              alignment :Alignment.topCenter,
              child: Text(
                "満点おめでとうございます",
                style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
