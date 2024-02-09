import 'package:flutter/material.dart';

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

  static TextStyle monomaniacOne(
      {required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: 'MonomaniacOne',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle ubuntuMedium(
      {required double fontSize,
      required Color color,
      FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
        letterSpacing: 1.5,
        fontFamily: 'Ubuntu-Medium',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color);
  }
}
