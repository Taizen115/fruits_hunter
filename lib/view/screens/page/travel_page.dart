import 'package:flutter/material.dart';

import '../../../style/style.dart';

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white70,
          title: Text("産地一覧", style: TextStyle(fontFamily: MainFont),),
        ),
      ),
    );
  }
}
