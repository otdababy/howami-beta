
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class TestMain extends StatelessWidget {
  const TestMain({
    Key? key,
    required this.title,
    // required this.press,
  }) : super(key: key);

  final String title;
  // final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 130.w,
          height: 130.w,
          color: Colors.grey,
        ),
        SizedBox(height: (5.w)),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize:14.w
                ),
                maxLines: 2,
              ),
              Container(height: 12.h),
              TextButton(
                  onPressed: null,
                  child: Text(
                      '시작하기',
                      style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.w700,
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