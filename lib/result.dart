import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Result extends StatelessWidget {
  int resultScore=0;
  var resetQuiz;

  Result(this.resultScore,this.resetQuiz);

  String get resultPharse{
    var resultText='You did it';

    if(resultScore<=8){
      resultText='You are awesome and innocent!';
    }else if(resultScore<=16){
      resultText='You are strange!';
    }else{
      resultText='You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
   // return Center(child: Text(resultPharse+resultScore.toString(),style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),);
   return Column(children: [Center(child: Text(resultPharse+'\n Your Score: '+resultScore.toString(),style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),),
   FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'),textColor: Colors.blue,)],);
  }
}
