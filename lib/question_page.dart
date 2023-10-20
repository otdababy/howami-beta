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
            Question(title: 'Q1. 나는 ~ 소리를 들어본적이 있다'),
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
            ), //레이트바 로우
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );

  }
}
