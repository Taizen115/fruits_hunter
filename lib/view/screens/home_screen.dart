import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/screens/pages/caution_page.dart';
import 'package:fruits_hunter/view/screens/pages/charm_page.dart';
import 'package:fruits_hunter/view/screens/pages/quiz_page.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';
import 'package:fruits_hunter/view/screens/pages/reference_page.dart';

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(children: [
                  InkWell(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/character/concierge.png",
                        )),
                    onTap: () => _goReferencePage(context),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Dear",
                            style:
                                TextStyle(fontFamily: MainFont, fontSize: 50.0),
                          ),
                          Text(
                            "Fruit",
                            style:
                                TextStyle(fontFamily: MainFont, fontSize: 50.0),
                          ),
                          Text(
                            "Picker",
                            style:
                                TextStyle(fontFamily: MainFont, fontSize: 50.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20.0,
              ),

              Bubble(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text(
                  "どういった情報をお求めでしょうか？",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontFamily: MainFont,
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              //選択肢部分
              _choicePart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _choicePart() {
    return Table(
      children: [
        TableRow(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white70,
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              onPressed: () => _goListPage(),
              child: Text("果物")),
          SizedBox(
            width: 20.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              onPressed: () => _goquizPage(context),
              child: Text("雑学")),
        ]),
        TableRow(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              onPressed: () => _goCharmPage(),
              child: Text("魅力")),
          SizedBox(
            width: 20.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white70,
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              onPressed: () => _goCautionPage(),
              child: Text("注意点")),
        ])
      ],
    );
  }

  _goListPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
  }

  _goquizPage(numberOfQuestions) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuizPage(numberOfQuestions: _numberOfQuestions)));
  }

  _goReferencePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ReferencePage()));
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
