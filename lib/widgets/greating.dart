import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour <= 11) {
    return 'Good Morning!';
  } else if ((hour >= 12) && (hour <= 17)) {
    return 'Good Afternoon!';
  } else if ((hour >= 17) && (hour <= 23)) {
    return 'Good Evening!';
  } else {
    return 'Good Night!';
  }
}

class Greeting extends StatelessWidget {
  final double fontSize;
  const Greeting({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          greeting(),
          style: CustomTextStyle.salsa(
              fontSize: fontSize, color: CustomColors.white),
        ),
        SizedBox(
            height: fontSize + mw! * 0.01,
            width: fontSize + mw! * 0.02,
            child: Lottie.asset('assets/jsons/hi.json')),
      ],
    );
  }
}
