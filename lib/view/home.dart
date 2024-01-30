import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/widgets/greating.dart';
import 'package:portfolio/widgets/image_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= minDesktopWidth) {
        return desktop();
      } else {
        return mobile();
      }
    });
  }

  Widget mobile() {
    return Container(
      height: h! * 0.925,
      width: w! * 1,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/background/one.jpg'),
        fit: BoxFit.cover,
        opacity: 0.4,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: h! * 0.02),
            child: SizedBox(
              height: h! * 0.35,
              width: h! * 0.35,
              child: const HomeImageAnimation(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h! * 0.07, bottom: h! * 0.04),
            child: SizedBox(
              width: w! * 0.97,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Greeting(fontSize: w! * 0.046),
                      Text(
                        ' My Name is ${AppText.name}',
                        style: CustomTextStyle.salsa(
                            fontSize: w! * 0.046, color: CustomColors.white),
                      ),
                    ],
                  ),
                  Text(
                    'and I\'m a ${AppText.work1}',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.salsa(
                        fontSize: w! * 0.046, color: CustomColors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: w! * 0.4,
            child: MaterialButton(
              onPressed: () {},
              color: CustomColors.highlight,
              hoverColor: CustomColors.hoverColor,
              padding: EdgeInsets.symmetric(
                  horizontal: w! * 0.03, vertical: w! * 0.03),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.doc_text_fill,
                    color: CustomColors.black,
                    size: w! * 0.046,
                  ),
                  Text(
                    ' Download Cv',
                    style: CustomTextStyle.diphylleia(
                        fontSize: w! * 0.046, color: CustomColors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget desktop() {
    return Container(
      height: h! * 0.925,
      width: w! * 1,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/background/one.jpg'),
        fit: BoxFit.cover,
        opacity: 0.4,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: h! * 0.5,
            width: h! * 0.5,
            child: const HomeImageAnimation(),
          ),
          Padding(
            padding: EdgeInsets.only(top: h! * 0.07),
            child: SizedBox(
              width: w! * 0.97,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Greeting(fontSize: w! * 0.035),
                      Text(
                        ' My Name is ${AppText.name}',
                        style: CustomTextStyle.salsa(
                            fontSize: w! * 0.035, color: CustomColors.white),
                      ),
                    ],
                  ),
                  Text(
                    'and I\'m a ${AppText.work1}',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.salsa(
                        fontSize: w! * 0.035, color: CustomColors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: w! * 0.17,
            child: MaterialButton(
              onPressed: () {},
              color: CustomColors.highlight,
              hoverColor: CustomColors.hoverColor,
              padding: EdgeInsets.symmetric(
                  horizontal: w! * 0.015, vertical: w! * 0.01),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.doc_text_fill,
                    color: CustomColors.black,
                    size: w! * 0.024,
                  ),
                  Text(
                    ' Download Cv',
                    style: CustomTextStyle.diphylleia(
                        fontSize: w! * 0.02, color: CustomColors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
