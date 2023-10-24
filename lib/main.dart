

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
              '/scenario' : (context) => ScenarioPage(
                  'T력 ','t_strength',const ['더 기분 좋은 칭찬은?','시험을 망쳤을 때\n위로되는 말은?' ,'지갑을 잃어버렸다' , '친구가 연애상담을\n 해달라고 한다, 그 때 나는' , '내가 더 잘푸는 문제는' , '남들이 보는 나는' , '예상치 못한 상황이 발생하면' , '더 좋아하는 영화 장르는?' , '나 열심히 돈 모아서 옷 샀어' , '내 주위 친구는 대부분'],
                const [1,2,2,2,2,2,1,2,1,2], const ['넌 진짜 똑똑하구나' , '넌 정말 따뜻한 마음을 가졌구나' ,
        '나도 망했어…\n이번에 너무 어렵지 않았냐','평균이 좀 낮아서 괜찮지 않을까?',
        '지갑 속 잃어버린 인생네컷이 아른거린다','민증, 카드들을 재발급\n받을 생각에 어지럽다',
        '그 마음 누구보다도 잘 알지…','잘잘못을 가리며 해결책을 제시해준다',
        '저자의 의도를 파악하는 문제', '복잡한 수학 증명 문제',
        '마음이 따뜻하고 정 많은 사람','의지되는 든든한 사람',
        '생각을 노트에 정리하며\n여러가지 플랜을 생각한다' , '에라 모르겠다~ 어떻게든 되겠지',
        '감동을 주는 로맨스 ex) 노트북','짜릿한 액션 영화 ex) 아이언맨',
        '오 뭐 샀는데?','오 축하해~~ 기분 좋겠다 ㅎㅎ',
        '위로와 격려를 해준다','현명한 조언을 해준다'], const['T력 상실', '일 할때 만큼은 T', 'T와 F 사이 어딘가', '암 Like tt~', '너 T야?'], const [['공감에 도를 튼 T력 꼴찌','노트북이 최애 영화','너 슬퍼? 나도 슬퍼','공감이 세상에서 제일 쉬웠어요','마음을 헤아리는게 가장 중요하지',
                    '우울한 감정을 마주하기가 힘들다'],['조언보다는 공감을 해줘야 진짜 내사람을 만들 수 있다','기분 좋을때 안 좋을 때 표정에서 다 드러남','가끔은 드라마 보면서 눈물을 훔친다…(또륵)',
                    '친구가 울면 따라서 눈물이 나온다','그룹 내 고민상담사',
                    '내 감정에 귀를 기울이려고 노력하는 편'],['MBTI 볼때마다 결과가 다르게 나온다','나도 내가 어떤 사람인지 모르겠다','주변에 우는 사람 있으면 같이 울어줄 수 있음','T와 F 둘다와 친해지기 쉬운 유형',
                    '남녀노소에게 인기 많다','밖에선 T인 부분이 티가 안남'],['공감과 해결책을 같이 제시해준다','내가 더 열심히 하지 뭐','은근 감성 따짐','때에 따라 바뀌는 카멜레온',
                    '가끔 영화보면 눈물 찔끔','감정 기복 적은 평탄한 인생'],['공감보다는 조언에 특화된 T력 만렙','답답하면 내가 뛴다','효율이 최고의 가치','공감하는게 쉽지만은 않은 일','감정에 휘둘려 일을 그르치는 일은 없다','업&다운이 없는 평탄한 인생']]),
              '/mental' : (context) => ScenarioPage('회복탄력성 ','mental',const ['식당에서 \“저기요\”하고\n불렀는데 직원이 오지 않는다' , '처음 본 사람이 내 패션을 칭찬한다' , '다음 주까지 처리해야 할 일이 생겼다' , '자려고 누웠는데 흑역사가 떠오른다' ,
              '주말 아침 7시에\n윗집이 청소기를 돌린다' , '친구 애인이\n바람피는 장면을 목격한다' , '사람이 붐비는 지하철에서는' , '가방을 열어보니 지갑이 없다' , '시험 전 날 애인에게 차였다' , '흰 옷을 입었는데\n빨간 국물이 튀었다'],
                  const [2,1,2,1,2,1,2,2,1,2] , const ['부끄럽다' , '다시 한번 큰 소리로 부른다' , '감사합니다! 그 쪽도 스타일 좋으세요' , '앗 아니에요!..' , '아오.. 스트레스 받아' , '그래도 다음 주면 아직 괜찮네!' , '이 정도는 귀엽지 ㅋ' , '괴로워하며 잠을 설친다' , '무슨 아침부터 청소기를 돌려!' ,
                  '주중에 바쁘셨나 보네..' , '당장 따라가서 따진다', '내가 잘못 본 거라 생각한다' , '울고 싶다..' , '금방 내릴거니까 참자' , '언제 어디서 잃어버렸더라?' , '카드사에 전화해서 분실신고부터 해야겠다' , '울면서 시험공부를 한다' , '손에 아무것도 안 잡힌다' , '왜 하필 흰 옷 입은날..' , '에휴 빨면 되지 뭐!'],
                  const ['쿠크다스 멘탈','모래성 멘탈','공든탑 멘탈','철옹성 멘탈','당신은 금강불괴?'],
                  const [['톡 치면 바스라지는 멘탈','외부자극에 예민','눈물에 대한 근성 0', '감수성 풍부'],['살짝 만 밀어도 으깨지는 모래성','상처를 치유하는데 오래 걸려','섬세한 감수성','해결보단 회피'],['혼자 잘 지내는 것 같지만 외부자극에 예민','감정 기복이 있는편', '의외의 근성이 있는 편', '공든탑도 무너질 수 있다'],['잦은 충격에도 끄떡없어','화나도 웃고 넘어가','겉으론 괜찮아 보이지만..' , '그래도 가끔 쉬어야해'],['어떤 충격에도 끄떡없어','어떻게든 된다','오히려 좋아','가끔은 쉬고 싶다']]),
              '/main' : (context) => MyHomePage()
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
      body: ColorfulSafeArea(
        color: Colors.white.withOpacity(0),
        overflowRules: OverflowRules.all(true),
        child: Padding(
            padding:  EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Column(
                    children: [
                      // Container(height: 120.h,),
                      TestMain(title: 'MBTI T력 테스트' , imgN: 't_strength', press: (){Navigator.pushNamed(context, '/scenario');}),
                      TestMain(title: '회복탄력성 테스트' , imgN: 'mental', press: (){Navigator.pushNamed(context, '/mental');}),
                      // Container(height: 70.h),

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
      ),
    );
  }
}
