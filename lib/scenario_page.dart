
import 'package:flutter/material.dart';
import 'package:howami/result_page.dart';
import 'package:size_config/size_config.dart';


class ScenarioPage extends StatefulWidget {
  late String _test;
  late List<String> _questions;
  late List<String> _choices;
  late List<int> _answers;
  late List<String> _results;
  late List<List<String>> _resultbody;
  ScenarioPage(String test, List<String> questions,List<int> answers, List<String> choices, List<String> results, List<List<String>> resultbody){
    _test = test;
    _questions = questions;
    _answers = answers;
    _choices = choices;
    _results = results;
    _resultbody = resultbody;
  }


  @override
  _ScenarioPageState createState() => _ScenarioPageState(_test, _questions, _answers, _choices, _results, _resultbody);
}

class _ScenarioPageState extends State<ScenarioPage> {
  late String _test;
  late List<String> _questions;
  late List<int> _answers;
  late List<String> _choices;
  late List<String> _results;
  late List<List<String>> _resultbody;
  _ScenarioPageState(String test, List<String> questions,List<int> answers, List<String> choices, List<String> results, List<List<String>> resultbody) {
    _test = test;
    _questions = questions;
    _answers = answers;
    _choices = choices;
    _results = results;
    _resultbody = resultbody;
  }
  int _current = 0;
  int _score = 0;
  int _markBox = 0;
  int _idx = 0;

  late String _title;
  late List<String> _body;

  // final _answersChecked = List<int>.filled(10, 0, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/main');
                },
                child: Image.asset(
                  'assets/images/wordmark.png',
                  fit: BoxFit.fitHeight,
                  height: 40,

                ),
              )
            ],
          ),
          toolbarHeight: 150,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.all(10)),

            Column(
              children: [

                Text(_questions[_current],textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'SnowCrab', fontWeight: FontWeight.w500,
                    color: Colors.black ),),


              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _current != 9 ?
                 Column(
                   children: [
                     TextButton(
                        onPressed: (){setState(() {
                          if( _answers[_current] == 1)
                          {
                            _score = _score + 1;
                          }
                          if(_current != 9){
                            _current = _current + 1;
                          }
                          else{
                            _markBox = 1;
                          }

                        });},
                        child: Text(
                            _choices[_current * 2],textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                color: Colors.white )
                        ),
                        style: TextButton.styleFrom(
                          fixedSize: Size(260.w,70.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                          backgroundColor: _markBox == 1 ? Colors.grey : Colors.black,
                        )),
                     Container(height: 20.h,),
                     TextButton(
                         onPressed: (){setState(() {
                           if( _answers[_current] == 2)
                           {
                             _score = _score + 1;
                           }
                           if(_current != 9){
                             _current = _current + 1;
                           }
                           else{
                             _markBox = 1;
                           }
                         });},
                         child: Text(
                             _choices[_current * 2 + 1],
                             style: TextStyle(fontSize: 15, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                 color: Colors.white )
                         ),
                         style: TextButton.styleFrom(
                           fixedSize: Size(260.w,70.h),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                           backgroundColor: _markBox == 2 ? Colors.grey : Colors.black,
                         )),
                     Container(height: 70.h,)
                   ],
                 ) :
                    //마지막 문제에서의 레이아웃
                Column(
                  children: [
                    TextButton(
                        onPressed: (){setState(() {
                          if(_current == 9){
                            _markBox = 1;
                          }
                          if(_current != 9){
                            _current = _current + 1;
                          }
                          if( _answers[_current] == 1)
                          {
                            _score = _score + 1;
                          }

                        });},
                        child: Text(
                            _choices[_current * 2],
                            style: TextStyle(fontSize: 15, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                color: Colors.white )
                        ),
                        style: TextButton.styleFrom(
                          fixedSize: Size(260.w,70.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                          backgroundColor: _markBox == 1 ? Colors.grey : Colors.black,
                        )),
                    Container(height: 20.h,),
                    TextButton(
                        onPressed: (){setState(() {
                          if(_current == 9){
                            _markBox = 2;
                          }
                          if(_current != 9){
                            _current = _current + 1;
                          }
                          if( _answers[_current] == 2)
                          {
                            _score = _score + 1;
                          }
                        });},
                        child: Text(
                            _choices[_current * 2 + 1],
                            style: TextStyle(fontSize: 15, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                color: Colors.white )
                        ),
                        style: TextButton.styleFrom(
                          fixedSize: Size(260.w,70.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                          backgroundColor: _markBox == 2 ? Colors.grey : Colors.black,
                        )),
                    Container(height: 70.h,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: (){setState(() {
                                if(_score <= 2){
                                  _title = _results[0];
                                  _body = _resultbody[0];

                                  _idx = 1;
                                }
                                else if (_score >2 && _score <=4){
                                  _title = _results[1];
                                  _body = _resultbody[1];

                                  _idx = 2;

                                }
                                else if (_score >4 && _score <=6){
                                  _title = _results[2];
                                  _body = _resultbody[2];
                                  _idx = 3;

                                }
                                else if (_score >6 && _score <=8){
                                  _title = _results[3];
                                  _body = _resultbody[3];
                                  _idx = 4;
                                }
                                else{
                                  _title = _results[4];
                                  _body = _resultbody[4];
                                  _idx = 5;

                                }
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => ResultPage(test: _test, addedResult: _score * 10, title: _title, body: _body, idx: _idx
                                    // title = _title,
                                    // body = _body,
                                    // addedResult: _score,
                                  ),),);
                              });},
                              child: Text(
                                  '제출',
                                  style: TextStyle(fontSize: 12, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                      color: Colors.white )
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: Size(130,40),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
                                backgroundColor: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(height: 70.h,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
