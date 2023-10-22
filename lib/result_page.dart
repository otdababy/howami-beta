import 'package:flutter/material.dart';
import 'package:howami/question.dart';
import 'package:howami/rate.dart';
import 'package:howami/ratebar.dart';
import 'package:howami/start_button.dart';
import 'package:size_config/size_config.dart';
import 'package:flutter/services.dart';


class ResultPage extends StatelessWidget {
   ResultPage({
    Key? key,
    required this.addedResult,
    required this.title,
    required this.body,
     required this.idx,
    // required this.press,`
  }) : super(key: key);

  final int addedResult;
  final String title;
  final List<String> body;
  final int idx;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "-$title-",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:45,
                    fontFamily: 'SnowCrab',
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'T력 ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize:40,
                        fontFamily: 'SnowCrab',
                    ),
                  ),
                  Container(width: 5.w,),
                  Text(
                    '$addedResult%',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize:40,
                      fontFamily: 'SnowCrab',
                    ),
                  ),
                ],
              ),
              Container(height: 25.h,),
              Container(
                width: 250.h,
                height: 250.h,
                child: Image.asset(
                  'images/t_strength/$idx.png',
                  fit: BoxFit.contain,
                ),

              ),
              Column(
                children: [
                  for ( var i in body )
                    Padding(
                      padding:  EdgeInsets.all(6.h),
                      child: Text(
                        i.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize:15,
                          fontFamily: 'SnowCrab',
                        ),
                      ),
                    )
                ],
              ),
              Container(height: 50.h,),
              GestureDetector(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: "https://mbti-37d6b.web.app/#"));
                  await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Padding(
                            padding: EdgeInsets.only(top: (25.0.h)),
                            child: Center(
                              child: Text(
                                '링크가 복사되었습니다!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'SnowCrab',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                          actions: [
                            Container(
                              width: 60,
                              height: 30,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    backgroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('확인', style: TextStyle(fontFamily: 'SnowCrab',fontWeight: FontWeight.w500, fontSize: (12),color: Colors.white),)
                              ),
                            )
                          ],
                        );
                      }
                  );
                  // copied successfully
                },
                child: Text(
                  "링크 공유",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize:13,
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
