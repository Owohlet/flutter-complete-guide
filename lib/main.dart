import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyNewAppState();
  }
}

class MyNewAppState extends State<MyNewApp> {
  var questionIndex = 0;
  int totalScore = 0;
  var questions = [
    {
      "QuestionText": "What's your favourite color",
      "answers": [
        {"text": "Purple", "score": 3},
        {"text": "Pink", "score": 2},
        {"text": "Orange", "score": 2},
        {"text": "Red", "score": 3}
      ]
    },
    {
      "QuestionText": "What's your favourite animal?",
      "answers": [
        {"text": "Lion", "score": 4},
        {"text": "Tiger", "score": 4},
        {"text": "Kangaroo", "score": 3},
        {"text": "Fox", "score": 3}
      ]
    },
    {
      "QuestionText": "What's your favourite meal?",
      "answers": [
        {"text": "Abacha", "score": 4},
        {"text": "fried rice", "score": 2},
        {"text": "Shawarma", "score": 3},
        {"text": "Pizza", "score": 5}
      ]
    },
    {
      "QuestionText": "what is your birth month?",
      "answers": [
        {"text": "February", "score": 2},
        {"text": "June", "score": 2},
        {"text": "September", "score": 2},
        {"text": "November", "score": 2}
      ]
    },
    {
      "QuestionText": "What do you do for fun?",
      "answers": [
        {"text": "Clubbing with friends", "score": 5},
        {"text": "Play video games", "score": 1},
        {"text": "Relax at the beach", "score": 4},
        {"text": "Go to the movies", "score": 2},
      ]
    }
  ];

  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void buttonPress(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
      // if (questionIndex > 4) questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Colors purple = Colors.purple[900];
    var colors = [
      Colors.purple[900],
      Colors.pink[900],
      Colors.orange[900],
      Colors.red[900]
    ];
    var colorcount = -1;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: (questionIndex < questions.length)
            ? Quiz(
                buttonPress: buttonPress,
                questionIndex: questionIndex,
                questions: questions,
                colorcount: colorcount,
                colors: colors)
            : Result(totalScore, restartQuiz),
      ),
    );
  }
}
