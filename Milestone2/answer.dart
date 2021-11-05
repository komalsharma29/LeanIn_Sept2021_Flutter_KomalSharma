import 'package:flutter/material.dart';
import './queslayout.dart';
import './anslayout.dart';

class Quiz extends StatelessWidget {
  final int qIndex;
  final List<Map<String, Object>> questionList;
  final Function(int) selectHandler;

  Quiz(
    this.questionList,
    this.selectHandler,
    this.qIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[qIndex]['question'] as String),
        ...(questionList[qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'] as String,
              () => selectHandler(answer['score'] as int));
        }).toList(),
      ],
    );
  }
}
