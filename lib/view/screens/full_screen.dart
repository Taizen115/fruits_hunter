import 'dart:io';
import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  final File imageFile;

  const FullScreen({required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('画像表示')),
      body: Center(
        child: Image.file(imageFile),
      ),
    );
  }
}