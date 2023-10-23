import 'package:colorful_safe_area/colorful_safe_area.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.fromLTRB(40, 40, 40, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize:25,
                      fontFamily: 'SnowCrab',
                  ),
                  maxLines: 2,
                ),
                Container(height: 10,),
                Container(height: 25,),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/t_strength/$idx.png',
                    fit: BoxFit.contain,
                  ),

                ),
                Container(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'T력 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize:25,
                        fontFamily: 'SnowCrab',
                      ),
                    ),
                    Container(width: 5.w,),
                    Text(
                      '$addedResult%',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w900,
                        fontSize:25,
                        fontFamily: 'SnowCrab',
                      ),
                    ),
                  ],
                ),
                Container(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for ( var i in body )
                      Padding(
                        padding:  EdgeInsets.all(7.h),
                        child: Text(
                          i.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize:16,
                            fontFamily: 'SnowCrab',
                          ),
                        ),
                      )
                  ],
                ),
                Container(height: 25,),
                GestureDetector(
                  onTap: () async {
                    await Clipboard.setData(ClipboardData(text: "https://mbti-37d6b.web.app/#"));
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Padding(
                              padding: EdgeInsets.only(top: (25.0)),
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

                        fontWeight: FontWeight.w600,
                        fontSize:16,

                        fontFamily: 'SnowCrab',
                    ),
                  ),
                ),
                // Container(height: 25),
                // Text(
                //   addedResult.toString(),
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.w700,
                //       fontSize:13.w,
                //       fontFamily: 'SnowCrab',
                //   ),
                // ),
                Container(height: 10,),
                StartButton(title: '다시하기', press: (){Navigator.pushNamed(context, '/main');}),
                Container(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
