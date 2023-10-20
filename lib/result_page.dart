import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

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
                    fontSize:30.w
                ),
                maxLines: 2,
              ),
              Text(
                '90% ENFP 입니다.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:30.w
                ),
              ),
              Container(height: 25.w,),
              Text(
                "당신은 어쩌구.....\n어쩌구\n어쩌구\n어쩌구",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize:15.w
                ),
              ),
              Container(height: 70.w,),
              Text(
                "링크 공유",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize:13.w
                ),
              ),
              Container(height: 25.h,),
              StartButton(title: '다시하기', press: (){Navigator.pushNamed(context, '/main');})
            ],
          ),
        ),
      ),
    );

  }
}
