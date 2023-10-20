
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
                        fontSize:25.w
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
                                  questions: ['나는 어쩌구1', '나는 어쩌구2','나는 어쩌구3..'],
                                ),),
                            );},
                          child: mbtiSelect(title: 'ENFP')
                      ),
                      mbtiSelect(title: 'ENFJ'),
                      mbtiSelect(title: 'ENTJ'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mbtiSelect(title: 'ENTP'),
                      mbtiSelect(title: 'ESFP'),
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