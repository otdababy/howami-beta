import 'package:flutter/material.dart';
import 'package:howami/main_test.dart';
import 'package:howami/mbti_page.dart';
import 'package:howami/mbti_select.dart';
import 'package:howami/question_page.dart';

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
              '/enfp': (context) => QuestionPage()
              // '/first': (context) => Screen1(),
            },
          home: const MyHomePage(title: 'Flutter Demo Home Page'));
         },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
                  fontSize:30.w
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
                  fontSize:15.w
              ),
              maxLines: 2,
            ),
            Container(
              height: 40.w,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/mbti');
              },
              child: TextButton(
                  onPressed: null,
                  child: Text(
                      '시작하기',
                      style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.w700,
                          color: Colors.white )
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: Size(130.w,32.w),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
                    backgroundColor: Colors.black,
                  ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}