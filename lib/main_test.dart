
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class TestMain extends StatelessWidget {
  const TestMain( {
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /*Container(
          width: 200.w,
          height: 200.w,
          color: Colors.grey,
        ),*/
        Image.asset(
          'assets/images/t_strength/1.png',
          fit: BoxFit.fitHeight,
          height: 300,
          width: 300,

        ),
        SizedBox(height: (10.w)),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'SnowCrab',
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize:14.w
                ),
                maxLines: 2,
              ),
              Container(height: 25.h),
              TextButton(
                  onPressed: press,
                  child: Text(
                      '시작하기',
                      style: TextStyle(fontFamily: 'SnowCrab',fontSize: 12.w, fontWeight: FontWeight.w300,
                          color: Colors.white )
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: Size(130.w,32.w),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
                    backgroundColor: Colors.black,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}