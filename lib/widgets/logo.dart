import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/my_flutter_app_icons.dart';
import 'package:portfolio/utils/text_style.dart';

class LogoAndName extends StatelessWidget {
  final Function() onTap;
  const LogoAndName({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            MyFlutterApp.logo,
            color: CustomColors.yellow,
            size: 18,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            'Chirag Bhatia',
            style: CustomTextStyle.caveat(
              fontSize: 20,
              color: CustomColors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
