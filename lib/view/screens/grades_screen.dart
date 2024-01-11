import 'package:flutter/material.dart';
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
                  image: AssetImage("assets/background/fruits_table.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
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
                style: TextStyle(fontSize: 35.0),
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
                    colors: [Colors.white12, Colors.black54]),
              ),
                child:Image.asset("assets/background/fruits_table.png", fit: BoxFit.cover),
              ),

                //2階　コンテンツ

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Gap(kToolbarHeight + 10),
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
                            shadowColor: Colors.black54,
                            child: Text(
                              "果物の知識について, 少しお助けできたでしょうか？\n今度は, 実際の果物狩りで, 楽しんでみてください.",
                              style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
