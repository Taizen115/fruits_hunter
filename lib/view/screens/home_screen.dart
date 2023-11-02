import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/screens/pages/caution_page.dart';
import 'package:fruits_hunter/view/screens/pages/charm_page.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';
import 'package:fruits_hunter/view/screens/pages/quiz_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _numberOfQuestions = 23;

  var numberOfCorrect;
  var correctRate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black87, Colors.black12]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/character/concierge.png",
                  )),
            ),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Dear",
                      style: TextStyle(fontFamily: MainFont, fontSize: 80.0, color: Colors.black87),
                    ),
                    Text(
                      "Fruit",
                      style: TextStyle(fontFamily: MainFont, fontSize: 65.0, color: Colors.black87),
                    ),
                    Text(
                      "Picker",
                      style: TextStyle(fontFamily: MainFont, fontSize: 50.0, color: Colors.black87),
                    )
                  ],
                ),
              ),
            ),
          ]),

          SizedBox(
            height: 20.0,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Animate(
                effects: [FadeEffect(),
                  ScaleEffect()],
                child: Text(
                  "お求めの情報は何でしょうか？",

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontFamily: MainFont,
                  ),
                ).animate().fade(delay: 2000.ms).scale().then(delay: 2500.ms),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          //選択肢部分
          _choicePart(),
        ]),
      ),
    ));
  }

  Widget _choicePart() {
    return Animate(
      effects: [FadeEffect(),
        ScaleEffect()],
      child: Table(
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white70,
                      backgroundColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      )),
                  onPressed: () => _goListPage(),
                  child: Text(
                    "果物",
                    style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
                  )),
            ),
            SizedBox(
              width: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black54,
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      )),
                  onPressed: () => _goQuizPage(context),
                  child: Text(
                    "雑学",
                    style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
                  )),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black54,
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      )),
                  onPressed: () => _goCharmPage(),
                  child: Text(
                    "魅力",
                    style: TextStyle(fontFamily: MainFont, fontSize: 25.0),
                  )),
            ),
            SizedBox(
              width: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white70,
                      backgroundColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      )),
                  onPressed: () => _goCautionPage(),
                  child: Text(
                    "注意点",
                    style: TextStyle(fontFamily: MainFont, fontSize: 20.0),
                  )),
            ),
          ])
        ],
      ).animate().fade(delay: 3000.ms).scale(),
    );
  }

  _goListPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
  }

  _goQuizPage(numberOfQuestions) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                QuizPage(numberOfQuestions: _numberOfQuestions)));
  }

  _goCharmPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CharmPage()));
  }

  _goCautionPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CautionPage()));
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:fruits_hunter/view/screens/page/travel_page.dart';
// import 'package:fruits_hunter/view/screens/page/list_page.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//
//   final _pages = [ListPage(), TravelPage(), SharePage()];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       //TODO
//       body: _pages[_currentIndex],
//       //TODO
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: true,
//           showUnselectedLabels: false,
//           unselectedItemColor: Colors.white,
//           backgroundColor: Colors.lightGreen,
//
//
//           currentIndex: _currentIndex,
//           items: const [
//             BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.listUl),
//                 label: "果物一覧",),
//             BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.suitcaseRolling),
//                 label: "日本の産地",),
//             BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.shareNodes),
//                 label: "共有",),
//           ],
//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           }),
//     ));
//   }
// }
