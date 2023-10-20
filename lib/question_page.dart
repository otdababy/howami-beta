import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:size_config/size_config.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'SnowCrab',
                    ),
                    child: Text('ENFP 정확도 테스트',textAlign: TextAlign.left,),
                  ),
                ),
              ],
            ),//ENFP 정확도 테스트
            Padding(padding: EdgeInsets.all(30)),
            Question(),
            Padding(padding: EdgeInsets.all(10)),
            RateBar(),//레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 18,
                ),
                child: Text('Q2. 나는 ~ 소리를 들어본적이 있다',textAlign: TextAlign.center,)
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//화면에서 센터에
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[0].title,)
                    ),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[4].title,)
                    ),
                  ],
                ),//레이트 버튼



              ],
            ), //레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 18,
                ),
                child: Text('Q3. 나는 ~ 소리를 들어본적이 있다',textAlign: TextAlign.center,)
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//화면에서 센터에
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("tapped");
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[0].title,)
                    ),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[4].title,)
                    ),
                  ],
                ),//레이트 버튼



              ],
            ), //레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 18,
                ),
                child: Text('Q4. 나는 ~ 소리를 들어본적이 있다',textAlign: TextAlign.center,)
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//화면에서 센터에
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("tapped");
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[0].title,)
                    ),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[4].title,)
                    ),
                  ],
                ),//레이트 버튼



              ],
            ), //레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 18,
                ),
                child: Text('Q5. 나는 ~ 소리를 들어본적이 있다',textAlign: TextAlign.center,)
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//화면에서 센터에
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("tapped");
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[0].title,)
                    ),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red,
                          ),
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 17)),
                  ],
                ),//레이트 버튼
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SnowCrab',
                          fontSize: 12,
                        ),
                        child: Text(rateList[4].title,)
                    ),
                  ],
                ),//레이트 버튼



              ],
            ), //레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );

  }
}
