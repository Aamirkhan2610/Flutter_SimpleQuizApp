import 'package:flutter/cupertino.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  int _questionIndex=0;
  final Function answerQuestions;

  Quiz(this.answerQuestions,this._questionIndex,this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[_questionIndex]['questionText'].toString()),   //'_' represent private class/variable
      ...(questions[_questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {

        return Answer(int.parse(answer['score'].toString()),answerQuestions, answer['text'].toString());

      }).toList()

    ],);
  }

}
