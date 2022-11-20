import 'package:flutter/cupertino.dart';
import 'package:food_ninja/presentations/configurations/constants.dart';

class CustomGradient {
  static LinearGradient linearGradient(
      {Alignment? beginAlignment, Alignment? endAlignment}) {
    return LinearGradient(
      colors: Constatnts.kGradientColor,
      begin: beginAlignment ?? Alignment.centerLeft,
      end: endAlignment ?? Alignment.centerRight,
    );
  }
}