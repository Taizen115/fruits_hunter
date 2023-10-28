import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        title: Text(
          "リンク先",
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: MainFont,
          ),
        ),
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white70,
        centerTitle: true,
        leadingWidth: 90,
        leading: TextButton(
          child: Text(
            "キャンセル",
            style: TextStyle(fontFamily: SubFont),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: _launchURL,
          child: Text(
            "フルーツリンク(2023年10月時点)",
            style: TextStyle(
                fontSize: 30.0, fontFamily: SubFont, color: Colors.black87),
          ),
        ),
      ),
    )));
  }

  void _launchURL() async {
    const url = 'https://iko-yo.net/topics/fruit';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
