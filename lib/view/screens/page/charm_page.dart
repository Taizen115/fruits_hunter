import 'package:flutter/material.dart';

import '../../../style/style.dart';

class CharmPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white70,
          title: Text("魅力", style: TextStyle(fontFamily: MainFont),),
        ),
      ),
    );
  }
}

