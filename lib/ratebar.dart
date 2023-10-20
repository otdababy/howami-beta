import 'package:flutter/material.dart';
import 'package:howami/rate.dart';
class RateBar extends StatefulWidget {
  const RateBar({Key? key}) : super(key: key);

  @override
  State<RateBar> createState() => _RateBarState();
}

class _RateBarState extends State<RateBar> {
  bool Clicked1 = false;
  bool Clicked2 = false;
  bool Clicked3 = false;
  bool Clicked4 = false;
  bool Clicked5 = false;

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,//화면에서 센터에
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Clicked1 = !Clicked1;
                  Clicked2 = false;
                  Clicked3 = false;
                  Clicked4 = false;
                  Clicked5 = false;

                });
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clicked1? Colors.red: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 12,
                ),
                child: Text(rateList[0].title,)
            ),
          ],
        ),//레이트 버튼
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Clicked2 = !Clicked2;
                  Clicked1 = false;
                  Clicked3 = false;
                  Clicked4 = false;
                  Clicked5 = false;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clicked2? Colors.red: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.red,
                  ),
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
          ],
        ),//레이트 버튼
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Clicked1 = false;
                  Clicked2 = false;
                  Clicked3 = !Clicked3;
                  Clicked4 = false;
                  Clicked5 = false;

                });
              },
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clicked3? Colors.grey:Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
          ],
        ),//레이트 버튼
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Clicked1 = false;
                  Clicked2 = false;
                  Clicked3 = false;
                  Clicked4 = !Clicked4;
                  Clicked5 = false;

                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clicked4? Colors.greenAccent:Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
          ],
        ),//레이트 버튼
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Clicked1 = false;
                  Clicked2 = false;
                  Clicked3 = false;
                  Clicked4 = false;
                  Clicked5 = !Clicked5;

                });
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clicked5? Colors.greenAccent: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SnowCrab',
                  fontSize: 12,
                ),
                child: Text(rateList[4].title,)
            ),
          ],
        ),//레이트 버튼
      ],
    );
  }
}
