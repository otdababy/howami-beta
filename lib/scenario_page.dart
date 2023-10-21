
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class ScenarioPage extends StatefulWidget {
  late List<String> _questions;
  late List<int> _answers;
  ScenarioPage(List<String> questions,List<int> answers){
    _questions = questions;
    _answers = answers;
  }


  @override
  _ScenarioPageState createState() => _ScenarioPageState(_questions, _answers);
}

class _ScenarioPageState extends State<ScenarioPage> {
  late List<String> _questions;
  late List<int> _answers;
  _ScenarioPageState(List<String> questions,List<int> answers) {
    _questions = questions;
    _answers = answers;
  }
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'SnowCrab',
              ),
              child: Text(
                '시나리오 테스트',
                style: TextStyle(
                  fontFamily: 'SnowCrab',
                ),
                textAlign: TextAlign.left,),
            ),
            Column(
              children: [
                Container(
                  width: 200.w,
                  height: 200.w,
                  color: Colors.grey,
                ),
                Container(height: 20.w,),
                Text(_questions[_current],
                  style: TextStyle(fontSize: 12.w, fontFamily: 'SnowCrab', fontWeight: FontWeight.w700,
                    color: Colors.black ),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){setState(() {
                            _current = _current + 1;
                          });},
                          child: Text(
                              '다음',
                              style: TextStyle(fontSize: 12.w, fontFamily: 'SnowCrab', fontWeight: FontWeight.w700,
                                  color: Colors.white )
                          ),
                          style: TextButton.styleFrom(
                            fixedSize: Size(130.w,32.w),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
                            backgroundColor: Colors.black,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
