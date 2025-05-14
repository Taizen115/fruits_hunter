import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:fruit_hunter/view/screens/feature_screen.dart';

class KansaiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).Guide,
          style: TextStyle(fontSize: 30.0, color: Colors.red[300]),
        ),
        leading: TextButton(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.teal,
            ),
            onPressed: () => _backStart(context)),
      ),
    );
  }

  _backStart(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => FeatureScreen(),
      ),
    );
  }
}
