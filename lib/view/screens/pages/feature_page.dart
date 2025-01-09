import 'package:flutter/material.dart';
import 'package:fruit_hunter/style/style.dart';

class FeaturePage extends StatefulWidget {

  @override
  State<FeaturePage> createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
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
