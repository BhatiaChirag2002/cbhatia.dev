import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/widgets/greating.dart';
import 'package:portfolio/widgets/image_animation.dart';
import 'package:portfolio/widgets/material_button.dart';

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
        // for desktop screen size
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: Container(
            height: 606.0,
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
                const SizedBox(
                  height: 250,
                  width: 250,
                  child: HomeImageAnimation(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 30, right: 30, bottom: 15),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.82,
                          child: Greeting(
                            fontSize: constraints.maxWidth * 0.04,
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.82,
                          child: Text(
                            'Hi there! My Name is ${AppText.name} and',
                            style: CustomTextStyle.salsa(
                                fontSize: constraints.maxWidth * 0.04,
                                color: CustomColors.white),
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.82,
                          child: Text(
                            'I\'m a ${AppText.work1}',
                            style: CustomTextStyle.salsa(
                                fontSize: constraints.maxWidth * 0.0385,
                                color: CustomColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: 180,
                    child: MaterialButtonWidget(
                      onTap: () {},
                      title: 'Download Cv',
                    ))
              ],
            ),
          ),
        );
      } else {
        //   for mobile screen size
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: Container(
            height: h! * 1,
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
                          width: constraints.maxWidth * 0.94,
                          child: Greeting(
                            fontSize: constraints.maxWidth * 0.044,
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.94,
                          child: Text(
                            'Hi there! My Name is ${AppText.name} and',
                            style: CustomTextStyle.salsa(
                                fontSize: constraints.maxWidth * 0.04,
                                color: CustomColors.white),
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.94,
                          child: Text(
                            'I\'m a ${AppText.work1}',
                            style: CustomTextStyle.salsa(
                                fontSize: constraints.maxWidth * 0.04,
                                color: CustomColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: 180,
                    child: MaterialButtonWidget(
                      onTap: () {},
                      title: 'Download Cv',
                    ))
              ],
            ),
          ),
        );
      }
    });
  }
}
