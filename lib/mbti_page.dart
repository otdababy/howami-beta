
import 'package:flutter/material.dart';
import 'package:howami/question_page.dart';
import 'package:size_config/size_config.dart';
import 'package:howami/mbti_select.dart';


class MbtiPage extends StatelessWidget {
  const MbtiPage({
    Key? key,
    // required this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 80.w, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Text(
                    '당신의 MBTI는?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize:25.w,
                        fontFamily: 'SnowCrab',
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  height: 30.w,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // mbtiSelect(title: 'ENFP', press: () { Navigator.pushNamed(context, '/enfp'); }, ),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (_) => QuestionPage(
                                  title: "ENFP",
                                  questions: const ['1. 일할땐 내가 T인가 생각이 든다' ,
                                '2. 나는 무언가에 쉽게 몰두했다가 쉽게 그만둔다',
                                '3. 연애할 때, 연인이 아닌 다른 이성에게도 친절하다',
                                '4. 나는 고민상담 전문가다',
                                '5. 말투가 조곤조곤하다는 소리를 자주 듣는다' ,
                                '6. 감정이 얼굴에 드러나는걸 잘 숨긴다' ,
                                '7. 연인이 연락을 자주하는것이 그렇게 중요하진 않다' ,
                                '8. 어른들에게 싹싹하다는 소리를 자주 듣는다',
                                '9. 남의 시선은 신경쓰지 않는다',
                                '10. 나는 약속시간에 종종 늦는다',
                               ' 11. 대화 도중 끊기면 말을 이어나가려고 한다',
                                '12. 모임에서 분위기메이커 역할을 종종한다',
                                '13. 충동적인 구매를 할때 짜릿하다',
                                '14. 나는 사람을 오래두고 본뒤 관계를 맺는다',
                                '15. 가슴이 시키는 답을 선택한다',
                                '16. 호불호가 심하다',
                                '17. 잠을 자기전, 상상의 나래를 펼치곤 한다',
                                '18. MBTI 테스트에 진심이다',
                                '19. 모든일에 경쟁을 즐긴다' ,
                                '20. 종종 노래나 영화 등에 감동받아 울기도 한다'],
                                  backwards: [5,7,14,19],
                                ),),
                            );},
                          child: mbtiSelect(title: 'ENFP')
                      ),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (_) => QuestionPage(
                                  title: "ENFJ",
                                  questions: const ['1. 방정리가 되야, 공부나 일을 시작한다',
                               ' 2. 할 일은 몰아서 하는 편이다 ',
                               ' 3. 이성을 볼 때, 외모보다는 대화가 잘통하는것이 중요하다',
                                '4. 종종 우유부단하다는 소리를 듣는다',
                                '5. 연인에게 다정다감한 편이다',
                                '6. 나는 참을성이 부족하다',
                                '7. 주위에서 바쁘게 산다라는 말을 종종 듣는다',
                                '8. 나는 측은지심을 잘 느끼는 편이다',
                                '9. 나는 거절을 잘한다' ,
                                '10. 연인간에 서운한 일이 있어도, 꾹 참는다',
                                '11. 경쟁적인 분위기를 즐긴다' ,
                                '12. 남의 눈치를 보는 편이다',
                                '13. 내가 좋아하지 않는 일이더라도 열정적이다',
                                '14. 매사에 관심이 많지만 쉽게 실증난다' ,
                                '15. 사소한 일에 감동을 받는다',
                                '16. 한번 상대방에게 빠지면 깊게 빠진다',
                                '17. 나는 내가 직접 눈으로 본 것만 믿는다',
                                '18. 길바닥에 쓰레기가 보이면 줍는 편이다',
                                '19. 한번 눈에 나면 관계를 칼같이 끊는다',
                                '20. 세상은 아직 살만하다'],
                                  backwards: [2,6,9,11,14],
                                ),),
                            );},
                          child: mbtiSelect(title: 'ENFJ')
                      ),]
                      ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'ESFP'),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (_) => QuestionPage(
                                  title: "ESFP",
                                  questions: const ['1. 나는 책임감이 강한 편이다' ,
                                '2. 일은 역시 몰아서 했을 때 가장 효율이 좋다',
                                '3. 나는 모임에서 분위기 메이커 역할을 종종 한다',
                                '4. 사람에 대한 호불호가 분명하다',
                                '5. 나만의 개성이 제일 중요하다',
                                '6. 나는 종종 사색에 잠기곤 한다',
                                '7. 나는 문화/예술에 관심이 많다',
                                '8. 나는 낙관주의자다',
                                '9. 연인이 재밌는 사람이였으면 좋겠다',
                                '10. 갈등이 생기면 피하지 않는다',
                                '11. 친구들과 여행을 갈 때, 계획은 내가 짠다',
                                '12. 지인의 조언을 참고해 행동한다',
                                '13. 파티같은 분위기에서 잘 적응한다',
                                '14. 나는 정이 많다',
                                '15. 나는 집에 있는게 밖에 있는것보다 좋다' ,
                                '16. 충동적인 여행을 즐겨한다',
                                '17. 나는 사람을 잘 본다고 생각한다',
                                '18. 화가 나면 쉽게 감정에 휩싸인다',
                                '19. 주목 받는 삶을 살고싶다',
                                  '20. 좋은게 좋은거다'],
                                  backwards: [1,6,10,12,15],
                                ),),
                            );},
                          child: mbtiSelect(title: 'ESFP')
                      ),
                      mbtiSelect(title: 'ESFJ'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'ESTJ'),
                      mbtiSelect(title: 'ESTP'),
                      mbtiSelect(title: 'INFP'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'INFJ'),
                      mbtiSelect(title: 'INTP'),
                      mbtiSelect(title: 'INTJ'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'ISFP'),
                      mbtiSelect(title: 'ISFJ'),
                      mbtiSelect(title: 'ISTP'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'ISTJ'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}