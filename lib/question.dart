import 'package:flutter/material.dart';
import 'package:howami/ratebar.dart';
import 'package:size_config/size_config.dart';

typedef MapCallback = void Function(int val);

class Question extends StatefulWidget {
  late String _title;
  late MapCallback _callback;
  Question(String title, MapCallback callback) {
    _title = title;
    _callback = callback;
  }

  @override
  State<Question> createState() => _QuestionState(_title, _callback);
}

class _QuestionState extends State<Question> {
  int _clicked =0;
  late String _title;
  late MapCallback _callback;
  _QuestionState(String title, MapCallback callback) {
    this._title = title;
    this._callback = callback;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextStyle(
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SnowCrab',
              fontSize: 18,
            ),
            child: Text(_title,textAlign: TextAlign.center,)
        ),
        Container(height: 10.h),
        RateBar((val) => setState(()=> _callback(val))),
        // // For checking if states are changed automatically
        // DefaultTextStyle(
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontFamily: 'SnowCrab',
        //       fontSize: 18,
        //     ),
        //     child: Text(_clicked.toString(),textAlign: TextAlign.center,)
       //  // ),
       // _callback: (val) => setState(()=> _clicked = val)
      ],
    );
  }
}
