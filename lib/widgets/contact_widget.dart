import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/my_flutter_app_icons.dart';
import 'package:portfolio/utils/text_style.dart';

class ContactTextWidget extends StatelessWidget {
  final double iconSize;
  final double fontSize;
  final IconData icon;
  final String heading;
  final String title;
  const ContactTextWidget({
    super.key, required this.iconSize, required this.fontSize, required this.icon, required this.heading, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: CustomColors.yellow,
                  size: iconSize,
                ),
                Text(
                  '  $heading',
                  style: CustomTextStyle.salsa(
                      fontSize: iconSize,
                      color: CustomColors.white),
                )
              ],
            ),
            Text(
              title,
              style: CustomTextStyle.ptSans(
                  fontSize: fontSize,
                  color: CustomColors.white),
            )
          ],
        ),
      ),
    );
  }
}

class SocialLink extends StatelessWidget {
  final double fontSize;
  final double iconSize;
  const SocialLink({
    super.key, required this.fontSize, required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  color: CustomColors.yellow,
                  size: fontSize,
                ),
                Text(
                  '  Social Links',
                  style: CustomTextStyle.salsa(
                      fontSize: fontSize,
                      color: CustomColors.white),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  iconSize: iconSize,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5),
                  icon: Icon(
                    MyFlutterApp.linkedin,
                    color: CustomColors.yellow,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5),
                  iconSize: iconSize,
                  icon: Icon(
                    MyFlutterApp.github,
                    color: CustomColors.yellow,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}