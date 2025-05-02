import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:fruit_hunter/view/screens/home_screen.dart';
import 'package:fruit_hunter/view/screens/apple_screen.dart';

class FeatureScreen extends StatefulWidget {
  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () => _goStrawberry(context),
              child: Text(S.of(context).Go,style: TextStyle(fontSize: 20.0, color: Colors.tealAccent),),
            ),
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.red[300],
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.green[300],
                ),
                onPressed: () => _goHomeScreen(context),
              ),
              title: Text(
                S.of(context).Apple,
                style: TextStyle(fontSize: 30.0),
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
                        colors: [Colors.black54, Colors.black12]),
                  ),
                  child: Image.asset("assets/feature/apple_x.jpg",
                      fit: BoxFit.cover),
                ),

                //2階　コンテンツ

                Center(
                  child: Text(
                    S.of(context).AppleWord,
                    style: TextStyle(fontSize: 50.0, color: Colors.white70),
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
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  _goStrawberry(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => StrawberryScreen(),
      ),
    );
  }
}
