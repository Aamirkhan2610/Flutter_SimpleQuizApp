import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';


void main()=> runApp(Myapp());

class _MyAppState extends State<Myapp>{
  var questions=[
    {'questionText':'What\'s your favourite color?',
      'answers':[{'text':'Black','score':10},{'text':'Red','score':5},{'text':'Green','score':3},{'text':'White','score':1}]

    },
    {'questionText':'What\'s your favourite animal?',
      'answers':[{'text':'Rabbit','score':3},{'text':'Snake','score':11},{'text':'Elephant','score':5},{'text':'Lion','score':9}]

    },
    {'questionText':'Who is your favourite instructor?',
      'answers':[{'text':'Shed','score':0},{'text':'Max','score':0},{'text':'Alex','score':0},{'text':'Robin','score':0}]

    }

  ];
  int _questionIndex=0;
  int _totalScore=0;
  void answerQuestions(int score){
    _totalScore+=score;
    setState(() {
      _questionIndex++;
    });
    if(_questionIndex<questions.length){
      print('We have more questions');
    }else{
      print('No more questions');
    }
  }

  void _resetQuiz(){
    print('reset function called');
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // return MaterialApp(home: Text('Hello'),);
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title: Text('Quiz App'),),
      body: _questionIndex<questions.length ? Quiz(answerQuestions, _questionIndex, questions):Result(_totalScore,_resetQuiz),),);

  }
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
