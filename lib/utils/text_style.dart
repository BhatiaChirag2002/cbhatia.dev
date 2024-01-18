import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle caveat({required double fontSize, required Color color}) {
    return GoogleFonts.caveat(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w900,
    );
  }

  static TextStyle diphylleia(
      {required double fontSize, required Color color}) {
    return GoogleFonts.diphylleia(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }
}
