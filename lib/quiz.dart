// ignore_for_file: prefer_const_constructors, invalid_required_positional_param

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required
        this.answerQuestion, //if it shows an error then dont use @ before required
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Answer the following Qs below',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        //Constructor
        Questions(
          // questions[_questionIndex]['questionText'] as String , --> this can only be different in versions
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
