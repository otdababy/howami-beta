import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class Rate{
  final int score;
  final String title;


  Rate(this.score, this.title);
}

List<Rate> rateList = [
  Rate(1,"비동의"),
  Rate(2,"보통 아니다"),
  Rate(3,"보통이다"),
  Rate(4,"그렇다"),
  Rate(5,"동의"),

];

