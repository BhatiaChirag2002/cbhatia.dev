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
      ///******************/ for Desktop screen size******************************
      if (constraints.maxWidth >= Sizes.minDesktopWidth) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: Container(
            height: 599.0,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
              alignment: Alignment(0.2, 0.0),
              image: AssetImage('assets/background/background.jpg'),
              fit: BoxFit.cover,
              opacity: 0.3,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // for animated image
                const SizedBox(
                  height: 250,
                  width: 250,
                  child: HomeImageAnimation(),
                ),

                // for text
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 30, right: 30, bottom: 15),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.82),
                          child: Greeting(
                            fontSize: Sizes.mediaWidth(
                                context: context, width: 0.035),
                          ),
                        ),
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.82),
                          child: Text(
                            'Hi there! My Name is ${AppText.name} and',
                            style: CustomTextStyle.ubuntuMedium(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.035),
                                color: CustomColors.white),
                          ),
                        ),
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.82),
                          child: Text(
                            'I\'m a ${AppText.work1}',
                            style: CustomTextStyle.ubuntuMedium(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.0385),
                                color: CustomColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }

      ///******************/ for mobile screen size******************************
      else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: Container(
            height: Sizes.mediaHeight(context: context, height: 0.925),
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
              alignment: Alignment(0.2, 0.0),
              image: AssetImage('assets/background/background.jpg'),
              fit: BoxFit.cover,
              opacity: 0.3,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 220,
                    width: 220,
                    child: HomeImageAnimation(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 10, right: 10, bottom: 15),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.94),
                          child: Greeting(
                            fontSize: Sizes.mediaWidth(
                                context: context, width: 0.044),
                          ),
                        ),
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.94),
                          child: Text(
                            'Hi there! My Name is ${AppText.name} and',
                            style: CustomTextStyle.ubuntuMedium(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.04),
                                color: CustomColors.white),
                          ),
                        ),
                        SizedBox(
                          width:
                              Sizes.mediaWidth(context: context, width: 0.94),
                          child: Text(
                            'I\'m a ${AppText.work1}',
                            style: CustomTextStyle.ubuntuMedium(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.04),
                                color: CustomColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
