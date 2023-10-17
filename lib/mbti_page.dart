
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class mbtiPage extends StatelessWidget {
  const mbtiPage({
    Key? key,
    // required this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25.w, 0, 0, 0),
                child: Text(
                  '당신의 MBTI는?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize:18.w
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                height: 40.w,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 0, 0.w, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}