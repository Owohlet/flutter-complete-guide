import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback buttonfunction;
  final Color buttonColor;
  final String answerText;

  Answer(this.buttonfunction, this.buttonColor, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: RaisedButton(
        color: buttonColor,
        child: Text(
          answerText,
          style: TextStyle(color: (Colors.white)),
        ),
        onPressed: buttonfunction,
      ),
    );
  }
}
