import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/text_style.dart';

class MaterialButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const MaterialButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: MaterialButton(
        onPressed: onTap,
        color: CustomColors.highlight,
        hoverColor: CustomColors.hoverColor,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.doc_text_fill,
              size: 25,
              color: CustomColors.black,
            ),
            Text(
              title,
              style: CustomTextStyle.diphylleia(
                  fontSize: 19.0, color: CustomColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
