import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/my_flutter_app_icons.dart';
import 'package:portfolio/utils/text_style.dart';

class Footer extends StatelessWidget {
  final double fontSize;
  final double iconSize;
  final Function() onTap;
  const Footer({
    super.key, required this.onTap, required this.fontSize, required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.1),
        child: Container(
          width: double.maxFinite,
          color: CustomColors.lightWhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: SizedBox(
                  child: Row(
                    children: [
                      Text(
                        'Made by ',
                        style: CustomTextStyle.monomaniacOne(
                            fontSize: fontSize,
                            color: CustomColors.black),
                      ),
                      Icon(
                        MyFlutterApp.logo,
                        size: fontSize,
                        color: CustomColors.black,
                      ),
                      Text(
                        ' Chirag Bhatia with Flutter 3.16',
                        style: CustomTextStyle.monomaniacOne(
                            fontSize: fontSize,
                            color: CustomColors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10),
                child: InkWell(
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'BACK TO TOP',
                          style: CustomTextStyle.monomaniacOne(
                              fontSize: fontSize,
                              color: CustomColors.black),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: CustomColors.black,
                          size: iconSize,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}