import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartHandler;

  Result(this.totalScore, this.restartHandler);

  String get resultPhrase {
    var resultText = "you did it";

    if (totalScore > 15) {
      resultText = "You're dark at heart... Like Voldermort";
    } else if (totalScore > 13) {
      resultText = "You love to have yourself some fun!";
    } else if (totalScore < 13) {
      resultText = "Oh my sweet summerchild, Never change!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartHandler,
            child: Text(
              "Restart Quiz",
              style: TextStyle(color: Colors.green[900]),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
