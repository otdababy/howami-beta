import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';
import 'package:flutter/services.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.addedResult,
    // required this.press,`
  }) : super(key: key);

  final int addedResult;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '당신은',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:30.w,
                    fontFamily: 'SnowCrab',
                ),
                maxLines: 2,
              ),
              Text(
                '$addedResult% ENFP 입니다.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:30.w,
                    fontFamily: 'SnowCrab',
                ),
              ),
              Container(height: 25.w,),
              Text(
                "당신은 어쩌구.....\n어쩌구\n어쩌구\n어쩌구",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize:15.w,
                    fontFamily: 'SnowCrab',
                ),
              ),
              Container(height: 70.w,),
              GestureDetector(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: "https://mbti-37d6b.web.app/#"));
                  // copied successfully
                },
                child: Text(
                  "링크 공유",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize:13.w,
                      fontFamily: 'SnowCrab',
                  ),
                ),
              ),
              Container(height: 25.h,),
              // Text(
              //   addedResult.toString(),
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.w700,
              //       fontSize:13.w,
              //       fontFamily: 'SnowCrab',
              //   ),
              // ),
              StartButton(title: '다시하기', press: (){Navigator.pushNamed(context, '/main');})
            ],
          ),
        ),
      ),
    );

  }
}
