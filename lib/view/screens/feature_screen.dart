import 'package:flutter/material.dart';
import 'package:fruit_hunter/style/style.dart';

class FeatureScreen extends StatefulWidget {

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("イチゴ狩り特集", style: TextStyle(fontSize: 20.0, fontFamily: MainFont),
        ),
        centerTitle: true,
      ),
    );
  }
}
