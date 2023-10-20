import 'package:flutter/material.dart';


// class TestMain extends StatelessWidget {
//   const TestMain({
//     Key? key,
//     required this.title,
//     // required this.press,
//   }) : super(key: key);
//
//   final String title;



class Question extends StatelessWidget {
  const Question({
    Key? key,
    required this.title,


  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SnowCrab',
          fontSize: 18,
        ),
        child: Text(title,textAlign: TextAlign.center,)
    );
  }
}
