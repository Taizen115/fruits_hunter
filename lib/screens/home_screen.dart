import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/screens/page/question_page.dart';
import 'package:fruits_hunter/screens/page/my_page.dart';
import 'package:fruits_hunter/screens/page/photo_page.dart';
import 'package:fruits_hunter/screens/page/schedule_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final _pages = [PhotoPage(), QuestionPage(), SchedulePage(), MyPage()];

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
                icon: FaIcon(FontAwesomeIcons.image),
                label: "photo",
                tooltip: "果物の写真",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.circleQuestion),
                label: "quiz",
                tooltip: "果物に関するクイズ",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.calendarDays),
                label: "schedule",
                tooltip: "果物狩りの予定",),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user),
                label: "my page",
                tooltip: "自分の記録",)
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    ));
  }
}
