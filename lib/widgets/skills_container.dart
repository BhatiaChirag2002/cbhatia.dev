import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/text_style.dart';

class SkillsContainer extends StatelessWidget {
  final String image;
  final String name;
  final double radius;
  final double imageHeight;
  final double sizeBoxHeight;
  final double fontSize;
  const SkillsContainer(
      {super.key,
      required this.image,
      required this.name,
      required this.radius,
      required this.imageHeight,
      required this.fontSize,
      required this.sizeBoxHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeBoxHeight,
      width: sizeBoxHeight,
      child: Column(children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: CustomColors.white,
          child: Image.asset(
            'assets/skills/$image.png',
            height: imageHeight,
            width: imageHeight,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(name,
            style: CustomTextStyle.ptSans(
                fontSize: fontSize, color: CustomColors.white)),
      ]),
    );
  }
}
