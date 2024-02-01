import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/text_style.dart';

class ScreenNameTitle extends StatelessWidget {
  final double fontSize;
  final String textOne;
  final String textTwo;
  const ScreenNameTitle({
    super.key, required this.fontSize, required this.textOne, required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: RichText(
          text: TextSpan(
              children: [
                TextSpan(text: '$textOne '),
                TextSpan(
                    text: textTwo,
                    style: TextStyle(
                      color: CustomColors.yellow,
                    ))
              ],
              style: CustomTextStyle.monomaniacOne(
                  color: CustomColors.white,
                  fontSize: fontSize))),
    );
  }
}