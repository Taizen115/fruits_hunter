import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/screens/page/question_page.dart';
import 'package:fruits_hunter/screens/page/share_page.dart';
import 'package:fruits_hunter/screens/page/list_page.dart';
import 'package:fruits_hunter/screens/page/schedule_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final _pages = [ListPage(), QuestionPage(), SchedulePage(), SharePage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //TODO
      body: _pages[_currentIndex],
      //TODO
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.lightGreen,


          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.listUl),
                label: "list",
                tooltip: "果物一覧",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.quora),
                label: "quiz",
                tooltip: "果物クイズ",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.calendarDays),
                label: "schedule",
                tooltip: "果物狩りの予定",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.shareNodes),
                label: "share",
                tooltip: "共有",)
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    ));
  }
}
