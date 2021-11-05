import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(quizapp());

class quizapp extends StatelessWidget { 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[600] ,
          centerTitle: true,
          title: const Text(
            "GET FIT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,            
              fontSize: 30),
            ),
          ),        
          body: QuestionText(),
                        
          ),
          );
  }
}


