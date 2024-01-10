import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/view/screens/home_screen.dart';
import 'package:gap/gap.dart';

class QuitScreen extends StatelessWidget {
  final int numberOfHunt;
  final int getRate;

  QuitScreen({required this.numberOfHunt, required this.getRate});

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
                  image: AssetImage("assets/background/fertilizer.png"),
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
                      child: Card(
                        shadowColor: Colors.blue,
                        elevation: 20.0,
                        child: Text(
                          "あなたの獲得した果物の数は, ${numberOfHunt}個です."
                              "\nまた, 獲得率は, ${getRate}%です."
                          "\nお疲れさまでした.",
                          style:
                          TextStyle(fontSize: 30.0, color: Colors.black87),
                        ),
                      ),
                    ),
                    Gap(50),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Card(
                        color: Colors.lightBlue,
                        surfaceTintColor: Colors.black87,
                        shadowColor: Colors.black54,
                        child: Text(
                          "今回は, 最後まで解くことができませんでしたが, 次のチャレンジをお待ちしております.",
                          style:
                          TextStyle(fontSize: 30.0, color: Colors.white70),
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