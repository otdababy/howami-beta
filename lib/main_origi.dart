

import 'package:flutter/material.dart';
import 'package:howami/main_test.dart';
import 'package:howami/scenario_page.dart';

import 'package:size_config/size_config.dart';

import 'mbti_main_page.dart';
import 'mbti_page.dart';

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
            ),
            routes: {
              '/mbti_main': (context) => MbtiMainPage(),
              '/mbti_main': (context) => MbtiPage(),
              '/scenario' : (context) => ScenarioPage(const ['더 기분 좋은 칭찬은?','시험을 망쳤을 때 위로되는 말은?' ,'지갑을 잃어버렸다' , '친구가 연애상담을 해달라고 한다, 그 때 나는' , '내가 더 잘푸는 문제는' , '남들이 보는 나는' , '예상치 못한 상황이 발생하면' , '더 좋아하는 영화 장르는?' , '나 열심히 돈 모아서 옷 샀어' , '내 주위 친구는 대부분'],
                const [1,2,2,2,2,2,1,2,1,2], const ['넌 진짜 똑똑하구나' , '넌 정말 따뜻한 마음을 가졌구나' ,
        '나도 망했어… 이번에 너무 어렵지 않았냐','평균이 좀 낮아서 괜찮지 않을까?',
        '지갑 속 잃어버린 인생네컷이 아른거린다','민증, 카드들을 재발급 받을 생각에 어지럽다',
        '그 마음 누구보다도 잘 알지…','잘잘못을 가리며 해결책을 제시해준다',
        '저자의 의도를 파악하는 문제', '복잡한 수학 증명 문제',
        '마음이 따뜻하고 정 많은 사람','의지되는 든든한 사람',
        '생각을 노트에 정리하며\n여러가지 플랜을 생각한다' , '에라 모르겠다~ 어떻게든 되겠지',
        '감동을 주는 로맨스 ex) 노트북','짜릿한 액션 영화 ex) 아이언맨',
        '오 뭐 샀는데?','오 축하해~~ 기분 좋겠다 ㅎㅎ',
        '위로와 격려를 해준다','현명한 조언을 해준다']),
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
        body: Scrollbar(
          thumbVisibility: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(25.w),
                    child: Text(
                      '나는 얼마나???/????',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize:20.w
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.w, 0, 0, 0),
                    child: Text(
                      '간단한 질문 & 답변으로',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize:18.w
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.w, 0, 0, 0),
                    child: Text(
                      '자신에 대해 알아보자',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize:18.w
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    height: 40.w,
                  ),
                  TestMain(title: 'MBTI 정확도 테스트' , press: (){Navigator.pushNamed(context, '/mbti_main');}),
                  Container(
                    height: 40.w,
                  ),
                  TestMain(title: "나는 잘생겼을까/이쁠까?", press: (){Navigator.pushNamed(context, '/scenario');}),
                  Container(
                    height: 40.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}