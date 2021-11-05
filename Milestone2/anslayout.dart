import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback stateHandler;

  Answer(this.answerText, this.stateHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
          foregroundColor: MaterialStateProperty.all(Colors.black)),
      child: Padding(
         padding: EdgeInsets.all(20.0),
      child: Text(
           answerText,
           
          )),
           onPressed: stateHandler,
          ),
      )

      );
  }
}
