import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../generated/l10n.dart';

class FullScreen extends StatelessWidget {
  final File imageFile;

  const FullScreen({required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.teal,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            }
          ),
          title: Text(S.of(context).FullScreen, style: TextStyle(color: Colors.teal),),
          centerTitle: true,
        ),
        body: Center(
          child: Image.file(imageFile),
        ),
      ),
    );
  }
}
