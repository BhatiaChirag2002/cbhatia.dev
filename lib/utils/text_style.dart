import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class CustomTextStyle {
  static TextStyle caveat({required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: 'Caveat',
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w900,
    );
  }

  static TextStyle diphylleia(
      {required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: 'Diphylleia',
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle salsa({required double fontSize, required Color color}) {
    return TextStyle(
        letterSpacing: 1.5,
        fontFamily: 'Salsa',
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: CustomColors.white);
  }
}
