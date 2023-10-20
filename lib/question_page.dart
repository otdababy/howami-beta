import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:howami/result_page.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';




class QuestionPage extends StatefulWidget {
  String title;
  List<String> questions;
  List<int> backwards;
  QuestionPage({Key? key, required this.title, required this.questions, required this.backwards}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState(title,questions,backwards);
}

class _QuestionPageState extends State<QuestionPage> {
  String title;
  List<String> questions;
  List<int> backwards;
  _QuestionPageState(this.title, this.questions, this.backwards);

  final _answersChecked = List<int>.filled(20, 0, growable: false);



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
                    child: Text(
                      '$title 정확도 테스트',
                      style: TextStyle(
                        fontFamily: 'SnowCrab',
                      ),
                      textAlign: TextAlign.left,),
                  ),
                ),
              ],
            ),//MBTI 정확도 테스트
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[0], (val) => setState(()=> _answersChecked[0] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[1], (val) => setState(()=> _answersChecked[1] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[2], (val) => setState(()=> _answersChecked[2] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[3], (val) => setState(()=> _answersChecked[3] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[4], (val) => setState(()=> _answersChecked[4] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[5], (val) => setState(()=> _answersChecked[5] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[6], (val) => setState(()=> _answersChecked[6] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[7], (val) => setState(()=> _answersChecked[7] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[8], (val) => setState(()=> _answersChecked[8] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[9], (val) => setState(()=> _answersChecked[9] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[10], (val) => setState(()=> _answersChecked[10] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[11], (val) => setState(()=> _answersChecked[11] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[12], (val) => setState(()=> _answersChecked[12] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[13], (val) => setState(()=> _answersChecked[13] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[14], (val) => setState(()=> _answersChecked[14] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[15], (val) => setState(()=> _answersChecked[15] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[16], (val) => setState(()=> _answersChecked[16] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[17], (val) => setState(()=> _answersChecked[17] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[18], (val) => setState(()=> _answersChecked[18] = val)),
            Padding(padding: EdgeInsets.all(30)),
            Question(questions[19], (val) => setState(()=> _answersChecked[19] = val)),
            Padding(padding: EdgeInsets.all(60)),
            StartButton(title: '제출', press: (){
              int result = 0;
              for (int i = 0; i < _answersChecked.length; i++) {
                int currentElement = _answersChecked[i];
                // Check if the current element is in the 'backwards' list
                if (backwards.contains(i)) {
                  result -= currentElement;
                  continue;
                } else {
                  result += currentElement;
                }
              }

              Navigator.push(context,
                  MaterialPageRoute(
                  builder: (_) => ResultPage(
                  addedResult: result,
                  // _answersChecked.reduce((a, b) => backwards.contains(/*index of the current element*/) ? a - b : a + b),
              ),),
            );}),
            Padding(padding: EdgeInsets.all(30)),

          ],
        ),
      ),
    );

  }
}