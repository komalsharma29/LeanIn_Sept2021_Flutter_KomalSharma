import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  final VoidCallback resetScore;

  Result(this.score, this.resetScore);

  String get resultPhrase {
    String resultText;
    if (score <= 20) {
      resultText ='EXPLORE MORE\nYour score is $score';
    } else {
      resultText ='SUPERB!!\nYour score is $score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
          fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resetScore,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
          child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Try again',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              )),
        )
      ],
    );
  }
}
