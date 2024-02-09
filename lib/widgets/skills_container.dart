import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';

class Skills extends StatelessWidget {
  final double width;
  final String category;
  final String name;
  final double fontSize;
  const Skills(
      {super.key,
      required this.fontSize,
      required this.category,
      required this.name, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.mediaWidth(context: context, width: width),
      child: Padding(
        padding:
            EdgeInsets.all(Sizes.mediaWidth(context: context, width: 0.01)),
        child: Row(
          children: [
            CircleAvatar(
                backgroundColor: CustomColors.white,
                radius: Sizes.mediaWidth(
                  context: context,
                  width: 0.004,
                )),
            Text(
              ' $category: ',
              style: CustomTextStyle.ubuntuMedium(
                  fontSize: fontSize,
                  color: CustomColors.white,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              name,
              style: CustomTextStyle.ubuntuMedium(
                  fontSize: fontSize, color: CustomColors.white),
            )
          ],
        ),
      ),
    );
  }
}
