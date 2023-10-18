import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferencePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: _launchURL,
            child: Text("フルーツリンク"),
          ),
        ),
      ),
    );
  }
  void _launchURL() async {
    const url = 'https://iko-yo.net/topics/fruit';
    if (await launchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
}
}