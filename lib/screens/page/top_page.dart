import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';

class TopPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Center(child: Text("Fruits Hunter", style: TextStyle(fontFamily: MainFont,fontSize: 50.0),)),
              SizedBox(height: 5.0),
              Expanded(child: Image.asset("assets/images/all_fruits.jpg", fit: BoxFit.fitWidth)),
            ]
          ),

        ),
      ),
    );
  }
}
