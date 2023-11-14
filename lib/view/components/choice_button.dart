import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color color;

  ChoiceButton(
      {required this.onPressed,
        required this.label,
        required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        width: 50.0,
        height: 40.0,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white70,
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                )),
            onPressed: onPressed, child: null,
        ),
      ),
    );
  }
}
