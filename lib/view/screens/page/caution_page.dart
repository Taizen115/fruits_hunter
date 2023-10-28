import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';

class CautionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white70,
          title: Text("注意点", style: TextStyle(fontFamily: MainFont),),
        ),
          ),
    );
  }
}
