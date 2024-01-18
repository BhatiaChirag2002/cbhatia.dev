import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/text_style.dart';

class DashboardCloseButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function() onTap;
  const DashboardCloseButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
            child: Row(
          children: [
            Icon(
              icon,
              size: 15.0,
              color: CustomColors.white,
            ),
            const SizedBox(
              width: 3.0,
            ),
            Text(label,
                style: CustomTextStyle.diphylleia(
                    fontSize: 15.0, color: CustomColors.white))
          ],
        )),
      ),
    );
  }
}
