import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 90,
        leading: TextButton(
          child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
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
