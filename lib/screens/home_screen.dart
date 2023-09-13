import 'package:flutter/material.dart';
import 'package:fruits_hunter/screens/page/game_page.dart';
import 'package:fruits_hunter/screens/page/info_page.dart';
import 'package:fruits_hunter/screens/page/my_page.dart';
import 'package:fruits_hunter/screens/page/photo_page.dart';
import 'package:fruits_hunter/screens/page/top_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final _pages = [TopPage(), PhotoPage(), InfoPage(), GamePage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //TODO
        body: _pages[_currentIndex],
        //TODO
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(icon: const Icon(Icons.home), label: "home", backgroundColor: Colors.yellowAccent,),
              BottomNavigationBarItem(icon: const Icon(Icons.photo_camera), label: "photo", backgroundColor: Colors.redAccent,),
              BottomNavigationBarItem(icon: const Icon(Icons.info), label: "info", backgroundColor: Colors.green,),
              BottomNavigationBarItem(icon: const Icon(Icons.gamepad_outlined), label: "game", backgroundColor: Colors.blue,),
              BottomNavigationBarItem(icon: const Icon(Icons.account_circle), label: "my page", backgroundColor: Colors.purple,)
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
      ),
    );
  }
}
