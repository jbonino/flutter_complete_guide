import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final Function onPressed;

  Answer({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(title),
        onPressed: onPressed,
      ),
    );
  }
}
