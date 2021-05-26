import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var selectHandler;
  final String answerText;
  final int score;

  Answer(this.score,this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: ()=>selectHandler(score),
      ),
    );
  }
}
