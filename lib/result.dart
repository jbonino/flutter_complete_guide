import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int maxScore;
  final Function playAgainPressed;

  String get stringScore {
    return totalScore.toString();
  }

  Result(
      {@required this.totalScore,
      @required this.playAgainPressed,
      @required this.maxScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You did it! \n You got l337 score of \n' +
                totalScore.toString() +
                '/' +
                maxScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Play again."),
            onPressed: playAgainPressed,
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
