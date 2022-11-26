import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//alternative to the code
void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCoolAppState();
  }
}
//the underscore before any class or method or variable represents that
// they are private and can not be accessible outside the main.dart file
//for example in this case we have _MyCoolAppState()

class _MyCoolAppState extends State<MyCoolApp> {
  final _questions = const [
    {
      'questionText': 'Who will be the next PM?',
      'answers': [
        {'text': 'Imran khan', 'score': 10},
        {'text': 'shareef', 'score': 5},
        {'text': 'zardarii', 'score': 3},
      ],
    },
    {
      'questionText': 'Who is the current PM?',
      'answers': [
        {'text': 'shareef', 'score': 10},
        {'text': 'Imran Khan', 'score': 5},
        {'text': 'zardarii', 'score': 3},
      ],
    },
    {
      'questionText': 'which one is your fav City?',
      'answers': [
        {'text': 'Islamabad', 'score': 10},
        {'text': 'Lahore', 'score': 7},
        {'text': 'Karachi', 'score': 5},
        {'text': 'Peshawar', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you want to an IPhone user?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState((){
      _totalScore = 0;
      _questionIndex = 0;
    }
    );

}
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Cool App',
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 700,
            width: 380,
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )//named arguments
                : Result(_totalScore,_resetQuiz),
          ),
        ),
      ),
    );
  }
}
