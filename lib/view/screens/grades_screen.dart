import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/view/screens/home_screen.dart';
import 'package:gap/gap.dart';

class GradesScreen extends StatelessWidget {
  final int numberOfHunt;
  final int getRate;

  GradesScreen({required this.numberOfHunt, required this.getRate});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white70, Colors.white12]),
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/trees.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.blue,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.lightBlue,
                ),
                onPressed: () => _goHomeScreen(context),
              ),
              title: Text(
                "クイズの成績",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        color: Colors.white70,
                        child: Text(
                          "あなたの獲得した果物の数は, ${numberOfHunt}個です."
                          "\nまた, 獲得率は, ${getRate}%です."
                          "\nお疲れさまでした.",
                          style:
                              TextStyle(fontSize: 30.0, color: Colors.black87),
                        ),
                      ),
                    ),
                    Gap(20),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          color: Colors.white70,
                          child: Text(
                            "果物の知識について, 少しお助け出来たでしょうか？"
                            "\n今度は, 実際の果物狩りで, たくさん狩ってください。"
                            "\n良い果物時間を！！！",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _goHomeScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
