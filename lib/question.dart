// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionsText;

  Questions(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Text(
        questionsText,
        textAlign: TextAlign.center,
        style: TextStyle(
          backgroundColor: Colors.white70,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
