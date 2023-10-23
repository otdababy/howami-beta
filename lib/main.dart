

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:howami/main_test.dart';
import 'package:howami/scenario_page.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';

import 'mbti_main_page.dart';
import 'mbti_page.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

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

            title: 'Porong',
            theme: ThemeData(
              primarySwatch: white,
            ),
            routes: {
              '/mbti_main': (context) => MbtiMainPage(),
              '/mbti_main': (context) => MbtiPage(),
              '/scenario' : (context) => ScenarioPage(const ['더 기분 좋은 칭찬은?','시험을 망쳤을 때\n위로되는 말은?' ,'지갑을 잃어버렸다' , '친구가 연애상담을\n 해달라고 한다, 그 때 나는' , '내가 더 잘푸는 문제는' , '남들이 보는 나는' , '예상치 못한 상황이 발생하면' , '더 좋아하는 영화 장르는?' , '나 열심히 돈 모아서 옷 샀어' , '내 주위 친구는 대부분'],
                const [1,2,2,2,2,2,1,2,1,2], const ['넌 진짜 똑똑하구나' , '넌 정말 따뜻한 마음을 가졌구나' ,
        '나도 망했어…\n이번에 너무 어렵지 않았냐','평균이 좀 낮아서 괜찮지 않을까?',
        '지갑 속 잃어버린 인생네컷이 아른거린다','민증, 카드들을 재발급\n받을 생각에 어지럽다',
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


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white.withOpacity(0),
      overflowRules: OverflowRules.all(true),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/wordmark.png',
                  fit: BoxFit.fitHeight,
                  height: 40,

                )
              ],
            ),
            toolbarHeight: 150,
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(height: 120.h,),
                  TestMain(title: 'MBTI T력 테스트' , press: (){Navigator.pushNamed(context, '/scenario');}),
                  Container(height: 70.h,),

                ],
              ),
              Container()
              // TestMain(title: "나는 잘생겼을까/이쁠까?", press: (){Navigator.pushNamed(context, '/scenario');}),
              // Container(
              //   height: 40.w,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
