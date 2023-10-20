
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class mbtiSelect extends StatelessWidget {
  const mbtiSelect({
    Key? key,
    required this.title,
    // required this.press,
  }) : super(key: key);

  final String title;
  // final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: null,
        child: Text(
            title,
            style: TextStyle(fontSize: 13.w, fontWeight: FontWeight.w700, fontFamily: 'SnowCrab',
                color: Colors.white )
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(100.w,50.w),
          backgroundColor: Colors.black,
        ));
  }
}