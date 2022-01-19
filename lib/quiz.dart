// import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';

// class Quiz extends StatelessWidget {
//   final int questionIndex;
//   final Function buttonPress;
//   final List<Map<String, Object>> questions;
//   int colorcount;
//   final List<Color> colors;

//   Quiz(this.buttonPress, this.questionIndex, this.questions, this.colorcount,
//       this.colors);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Question(questions[questionIndex]['QuestionText']),
//         ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
//             .map((answer) {
//           colorcount = colorcount + 1;
//           print(answer);
//           return Answer(() => buttonPress(answer['score']),
//               (colors[colorcount]), answer["text"]);
//         }).toList(),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function buttonPress;
  int colorcount;
  final List<Color> colors;

  Quiz(
      {@required this.questions,
      @required this.buttonPress,
      @required this.questionIndex,
      @required this.colors,
      @required this.colorcount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['QuestionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          colorcount = colorcount + 1;
          print(answer);
          print(colorcount);
          return Answer(() => buttonPress(answer['score']),
              (colors[colorcount]), answer['text']);
        }).toList()
      ],
    );
  }
}
