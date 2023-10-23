
import 'package:flutter/material.dart';
import 'package:howami/result_page.dart';
import 'package:size_config/size_config.dart';


class ScenarioPage extends StatefulWidget {
  late List<String> _questions;
  late List<String> _choices;
  late List<int> _answers;
  ScenarioPage(List<String> questions,List<int> answers, List<String> choices){
    _questions = questions;
    _answers = answers;
    _choices = choices;
  }


  @override
  _ScenarioPageState createState() => _ScenarioPageState(_questions, _answers, _choices);
}

class _ScenarioPageState extends State<ScenarioPage> {
  late List<String> _questions;
  late List<int> _answers;
  late List<String> _choices;
  _ScenarioPageState(List<String> questions,List<int> answers, List<String> choices) {
    _questions = questions;
    _answers = answers;
    _choices = choices;
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
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/wordmark.png',
                fit: BoxFit.fitHeight,
                height: 60,
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
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SnowCrab',
              ),
              child: Text(
                'MBTI T력 테스트',
                style: TextStyle(
                  fontFamily: 'SnowCrab',
                ),
                textAlign: TextAlign.left,),
            ),
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
                                  _title = 'T력 상실';
                                  _body = ['- 공감에 도를 튼 T력 꼴찌','- 노트북이 최애 영화','- 너 슬퍼? 나도 슬퍼','- 공감이 세상에서 제일 쉬웠어요','- 마음을 헤아리는게 가장 중요하지',
                                    '- 우울한 감정을 마주하기가 힘들다'];
                                  _idx = 1;
                                }
                                else if (_score >2 && _score <=4){
                                  _title = '일 할때 만큼은 T';
                                  _body = ['- 조언보다는 공감을 해줘야 진짜 내사람을 만들 수 있다','- 기분 좋을때 안 좋을 때 표정에서 다 드러남','- 가끔은 드라마 보면서 눈물을 훔친다…(또륵)',
                                    '- 친구가 울면 따라서 눈물이 나온다','- 그룹 내 고민상담사',
                                    '- 내 감정에 귀를 기울이려고 노력하는 편'];
                                  _idx = 2;

                                }
                                else if (_score >4 && _score <=6){
                                  _title = 'T와 F 사이 어딘가';
                                  _body = ['- MBTI 볼때마다 결과가 다르게 나온다','- 나도 내가 어떤 사람인지 모르겠다','- 주변에 우는 사람 있으면 같이 울어줄 수 있음','- T와 F 둘다와 친해지기 쉬운 유형',
                                    '- 남녀노소에게 인기 많다','- 밖에선 T인 부분이 티가 안남'];
                                  _idx = 3;

                                }
                                else if (_score >6 && _score <=8){
                                  _title = '암 랔 tt';
                                  _body = ['- 공감과 해결책을 같이 제시해준다','- 내가 더 열심히 하지 뭐','- 은근 감성 따짐','- 때에 따라 바뀌는 카멜레온',
                                    '- 가끔 영화보면 눈물 찔끔','- 감정 기복 적은 평탄한 인생'];
                                  _idx = 4;
                                }
                                else{
                                  _title = '너 T야?';
                                  _body = ['- 공감보다는 조언에 특화된 T력 만렙','- 답답하면 내가 뛴다','- 효율이 최고의 가치','- 공감하는게 쉽지만은 않은 일','- 감정에 휘둘려 일을 그르치는 일은 없다','- 업&다운이 없는 평탄한 인생'];
                                  _idx = 5;

                                }
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => ResultPage(addedResult: _score * 10, title: _title, body: _body, idx: _idx
                                    // title = _title,
                                    // body = _body,
                                    // addedResult: _score,
                                  ),),);
                              });},
                              child: Text(
                                  '제출',
                                  style: TextStyle(fontSize: 12.w, fontFamily: 'SnowCrab', fontWeight: FontWeight.w300,
                                      color: Colors.white )
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: Size(130.w,40.h),
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
