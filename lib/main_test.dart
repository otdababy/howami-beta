
import 'package:flutter/material.dart';


class TestMain extends StatelessWidget {
  const TestMain({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "더 보기",
              style: TextStyle(
                color: Color(0xFFBBBBBB),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}