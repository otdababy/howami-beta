import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SnowCrab',
          fontSize: 18,
        ),
        child: Text('Q1. 나는 ~ 소리를 들어본적이 있다',textAlign: TextAlign.center,)
    );
  }
}
