import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import './anslayout.dart';


import './result.dart';

class QuestionText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionTextState();
  }
}

class QuestionTextState extends State<QuestionText>{
  int qIndex = 0;
  int totalScore = 0;
  var questions = [
    {
      'question': 'The word “yoga” is derived from a Sanskrit word meaning what?',
      'answers': [
        {'text': 'A. Spirit', 'score': 0},
        {'text': 'B. Union', 'score': 10},
        {'text': 'C. Posture', 'score': 0}
      ]
    },
    {
      'question':'Which country does yoga originate from?',
      'answers': [
        {'text': 'A. Bangladesh', 'score': 0},
        {'text': 'B. Thailand', 'score': 0},
        {'text': 'C. India', 'score': 10}
      ]
    },
    {
      'question': 'Which type of yoga focuses primarily on exercise and physical techniques?',
      'answers': [
        {'text': 'A. Hatha yoga', 'score': 10},
        {'text': 'B. Jnana yoga', 'score': 0},
        {'text': 'C. Raja yoga', 'score': 0}
      ]
    },
    {
      'question':'Bikram yoga is a form of what type of yoga?',
      'answers': [
        {'text': 'A. Hot yoga', 'score': 10},
        {'text': 'B. Forrest yoga', 'score': 0},
        {'text': 'C. Hatha yoga', 'score': 0}
      ]
    },
    {
      'question': 'Name the asana in which waist and arms look like a cobra?',
      'answers': [
        {'text': 'A. Bhujangasana', 'score': 10},
        {'text': 'B. Ardhachakrasana', 'score': 0},
        {'text': 'C. Vakrasana', 'score': 0}
      ]
    },
    {
      'question': 'In 2020, which International Day of Yoga was celebrated?',
      'answers': [
        {'text': 'A. 5', 'score': 0},
        {'text': 'B. 6', 'score': 10},
        {'text': 'C. 10', 'score': 0}
      ]
    },
    //
  ];

  void resetScore() {
    setState(() {
      totalScore = 0;
      qIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      qIndex += 1;
    });
    print(totalScore);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: qIndex < questions.length
            ? Quiz(questions, answerQuestion, qIndex) 
            : Result(totalScore, resetScore),
      ),
    );
  }
}
