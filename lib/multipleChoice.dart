import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class MultipleChoice extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final Function answerSelected;

  MultipleChoice(
      {@required this.question,
      @required this.answers,
      @required this.answerSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers
            .map((answer) => Answer(
                  title: answer['label'],
                  onPressed: () => answerSelected(answer['score']),
                ))
            .toList(),
      ],
    );
  }
}
