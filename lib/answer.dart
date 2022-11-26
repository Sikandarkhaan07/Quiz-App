// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answerText;

  Answer(this.handler, this.answerText);

  // const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.amberAccent,
          padding: EdgeInsets.only(left: 25, right: 25),
        ),
        onPressed: handler,
        child: Text(answerText),
      ),
    );
  }
}
