

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
              '/aura' : (context) => ScenarioPage('아우라 명도','mental', const ['더 좋아하는 시간은?','당신에게 더 중요한 것은?','오늘 밤 꿈을 꾼다면?','자유시간이 주어진다면?','문제를 해결할 때\n당신이 먼저 하는 것은?','수고한 나에게\n주는 선물은?','슬픈일을 겪었을때 나는','더 나은 상황은?','당신이 선택할 길은?','당신이 생각하는 당신의 모습은?'],
                  const [2,1,1,1,1,2,1,1,1,1,2] , const ['생각을 정리할 수 있는 새벽','생기 넘치는 낮','나를 믿는 것','나를 사랑하는 것','환상 동화 속 주인공이 되는 꿈','사랑하는 사람과 함께하는 꿈','음악 들으며 홀로 한강 산책','한강에서 친구들과 맥주 한 잔','눈을 감고 상황을 그려본다','눈을 뜨고 주변을 둘러본다','수수한 꽃다발','조금 비싸서 망설이던 옷','슬픈 영화나 책을 보고 운다','차분히 마음을 가라앉히고 일기를 쓴다','오늘은 행복하지만 내일을 예측할 수 없을 때','오늘은 우울하지만 내일의 행복이 보장되어 있을 때','많은 발자국이 남아있는 길','아무도 밟지 않아 깨끗한 길','항상 새로운 일에 도전하는 사람','항상 완벽함을 추구하는 사람'],
                  const ['딜라잇 옐로우','아날로그 베이지','아로마 민트','오션 네이비','비비드 바이올렛'],
                  [['분위기를 스무스하게 만들어요','남들의 시선을 잡아끌어요','어두운 곳에서도 빛나는 생각을 해요'],
                  ['용기가 필요한일에 주저없이 뛰어들어요','남들은 보지 못한 어떠한 이면을 봐요','사랑을 잘 표현하고 전달할 수 있어요'],
                  ['어려운 문제를 맞닥뜨려도 무너지지 않아요','어떻게든 방법을 찾아내요','무엇이든 꾸준히 오래할 수 있어요'],
                  ['복잡한 일도 깔끔하게 정돈할 수 있어요','멋진 모습으로 주변인을 끌어들여요','새로운 지식을 스펀지처럼 흡수해요'],
                  ['핵심을 찌를 줄 알아요','효율적으로 일을 처리할 수 있어요','어떤 사람과도 잘 조화를 이뤄요']]),
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
              '/lover' : (context) => ScenarioPage('연애 온도', 'lover', const['반드시 한명과 연애해야 한다면?','잘 자라는 내 말에','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','반드시 한명과 연애해야 한다면?','친구를 만난다는 내 말에'],
                  const[2,2,2,1,1,2,1,1,1,1],
                  const['눈이 오나 비가 오나 더치페이','돌아가면서 사는데 내가 더 많이냄','응','웅웅 쟐쟈 내꿈꿔용 ><','10년지기 이성친구','인기 많은 안지 1년된 친구','하루에 부재중 전화 100통','한 달 내내 부재중 0통','모든 날이 기념일.\n 기념일 3개 겹치면 파티 3번','기념일 없음','잠수 이별 10회','바람 3회','매일 이성에게 DM 받는 사람','인스타그램 없음','한여름에도 손 잡으면 절대 안놓음','손잡고 난 뒤 스윽 옷에 닦음','명동 한가운데서 프로포즈','프로포즈 없이 결혼식도 패스','그 친구의 사돈의 팔촌까지 호구조사','알아서 잘 하겄지~ '],
                  const['남극의 펭귄','시큰둥한 사슴','속을 알 수 없는 \n 나무늘보','생기 넘치는 토끼','50도 사막의 \n 사막여우'],
                  const[['시크한건지 그냥 관심이 없는건지','연인인지 친구인지 헷갈린다' , '엄청 내향적인 성향' , '방생형 연애 추구'],['시크한 스타일', '질투가 많이 없음' , '이 성향과는 잘 싸우지 않는다' , '연락에 집착하지 않는 타입'],['이 xx는 속을 모르겠다', '자기 기분따라 행동이 바뀜' , '연애의 재미는 보장된다' , '가끔 답답할 때가 있다'],['귀여운 맛이 있다', '적극적으로 상대에게 표현한다' , '가끔 말도 없이 삐질 때가 있다' , '사랑받는 기분이 들게 해준다'],['열정적인 연애 추구', '자주 삐져서 연락이 안된다' , '밖이든 안이든 애정표현을 자주 한다' , '좀 부담스러울 정도로 나를 사랑해준다']]
              ),
              '/social' : (context) => ScenarioPage('사회력', 'social',
                  const['”요즘 고민이 많아요…” \n 동료가 한탄하면' , '매일 마주쳐야 하는 \n 상대가 불편하다면' , '약속에 나갔는데 컨디션이 안좋으면' , '”반성문을 영어로하면? 글로벌 ㅋㅋ” \n 상사의 아재개그에 나는' , '동료나 상사에게 \n 듣고 싶은 칭찬은?' , '나만 보너스가 안들어왔다면' , '사무실/강의실에 들어갈때' , '바빠 죽겠는데 동료가 \n TMI를 남발한다' , '오다가 교통사고가 난 동료에게' , '다시 태어난다면'],
                  const[2, 1 , 1 , 1 , 1 , 2 , 2 , 2 , 1,1],
                  const['무슨 일이야? 동료를 적극 위로해준다' , '고민을 해결해주려 적극 조언한다' , '아무렇지 않게 웃으며 대화한다' , '최대한 동선을 피해 \n 대화 가능성을 차단한다' , '놀면서 컨디션을 끌어 올린다' , '티는 안내지만 나는 \n너무 집에 가고싶다' , 'ㅋㅋㅋㅋㅋㅋㅋ 맞장구 쳐준다' , '리액션이 고장난다' , '”너 일처리 끝내준다”' , '”너랑 일하는게 즐겁다”' , '실망을 금치 못하여 \n 집에서 혼술한다' , '내가 어떤점이 부족했는지 \n 냉철하게 분석한다' , '조용히 자리로 간다' , '모두에게 반갑게 \n 인사하며 들어간다' , '바쁘다고 하며 대화를 끊는다' , '일단 리액션 해준다' , '괜찮으세요? \n 보험처리는 잘 됐나요?' , '안 다치셨어요? ㅠㅠ 쉬셔야 하는거 아닌가요 ㅠ','사장' , '직원'],
                  const['지칠대로 지친 영혼','상처 받고 싶지 않아','평화가 최고야','승진 유력 후보','일처리 + 사회성 만렙'],
                  const[['이미 치일대로 치여버림','예민한 영혼','칼퇴하고 집가고 싶다…', '회식이요…?','동료가 말걸까 무섭다'],['내성적인가 싶다가도 \n 필요할땐 똑부러짐','어떤 일이 있어도 차분하고 덤덤','괜히 문제에 엮이고 \n 싶어하지 않는다','회피형 유형'],['개인 업무에 강하다','뛰어난 실천력 보유', '의외의 근성이 있는 편', '상황파악 엄청 빠름'],['성격이 굉장히 싹싹하다','팀플 캐리하는 사람','사람들에게 나에게 의지한다' , '분위기 파악 만렙'],['어떤 충격에도 끄떡없어','어떻게든 해냄','사회적으로 성공 가능성이 \n 높은 유형','지칠줄 모르는 워커홀릭']]),
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

                      TestMain(title: '내 이상형은 - 연애 밸런스게임' , imgN: 'lover', press: (){Navigator.pushNamed(context, '/lover');}),
                      TestMain(title: '무한상사 짤로 알아보는 \n 사회생활 유형 테스트' , imgN: 'social', press: (){Navigator.pushNamed(context, '/social');}),

                      TestMain(title: '아우라 컬러 테스트' , imgN: 'mental', press: (){Navigator.pushNamed(context, '/aura');}),

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
