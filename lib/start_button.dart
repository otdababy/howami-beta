
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: TextButton(
        onPressed: null,
        child: Text(
            title,
            style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.w700, fontFamily: 'SnowCrab',
                color: Colors.white )
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(130.w,32.w),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
          backgroundColor: Colors.black,
        ),

      ),
    );
  }
}