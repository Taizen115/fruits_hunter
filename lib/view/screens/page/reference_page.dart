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
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
}
}