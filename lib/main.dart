import 'package:flutter/material.dart';
import 'package:howami/main_test.dart';
import 'package:howami/mbti_page.dart';
import 'package:howami/mbti_select.dart';
import 'package:howami/question_page.dart';
import 'package:howami/result_page.dart';
import 'package:howami/start_button.dart';

import 'package:size_config/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
      referenceHeight: 800,
      referenceWidth: 375,
      builder: (BuildContext context, Orientation orientation) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            routes: {
              '/mbti': (context) => MbtiPage(),
              // '/enfp': (context) => QuestionPage(),
              // '/result': (context) => ResultPage(),
              '/main' : (context) => MyHomePage()
              // '/first': (context) => Screen1(),
            },
            home: const MyHomePage());
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
