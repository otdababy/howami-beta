import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';


class MbtiMainPage extends StatefulWidget {
  const MbtiMainPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MbtiMainPage> createState() => _MbtiMainPageState();
}

class _MbtiMainPageState extends State<MbtiMainPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MBTI 정확도 테스트',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize:30.w,
                fontFamily: 'SnowCrab',
              ),
              maxLines: 2,
            ),
            Container(
              height: 15.w,
            ),
            Text(
              '내 MBTI, 이대로 괜찮은가',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'SnowCrab',
                  fontSize:15.w
              ),
              maxLines: 2,
            ),
            Container(
              height: 40.w,
            ),
            StartButton(title: '시작하기', press: (){Navigator.pushNamed(context, '/mbti');})
          ],
        ),
      ),
    );
  }
}