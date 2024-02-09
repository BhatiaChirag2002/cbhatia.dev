import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/widgets/skills_container.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      ///******************/ for Desktop screen size******************************
      if (constraints.maxWidth >= Sizes.minDesktopWidth) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: Sizes.mediaWidth(context: context, width: 0.25),
                      child: Image.asset(
                        'assets/images/photo2.png',
                        width: Sizes.mediaWidth(context: context, width: 0.2),
                        height: Sizes.mediaWidth(context: context, width: 0.2),
                      )),
                  SizedBox(
                    width: Sizes.mediaWidth(context: context, width: 0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenNameTitle(
                          fontSize:
                              Sizes.mediaWidth(context: context, width: 0.038),
                          textOne: 'About',
                          textTwo: 'Me',
                        ),
                        Text(
                          AppText.about,
                          style: CustomTextStyle.ubuntuMedium(
                              fontSize: Sizes.mediaWidth(
                                  context: context, width: 0.017),
                              color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white24),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.022),
                                textOne: 'My',
                                textTwo: 'Skills',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Programing Language',
                                    name: 'Dart',
                                  ),
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Mobile App Development',
                                    name: 'Flutter',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'State Management',
                                    name: 'GetX',
                                  ),
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Database',
                                    name: 'Firebase',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'API Integration',
                                    name: 'RESTful APIs',
                                  ),
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                        context: context, width: 0.011),
                                    category: 'IDEs',
                                    name: 'Android Studio, Visual Studio Code',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'UI/UX Design',
                                    name: 'Figma',
                                  ),
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Version Control',
                                    name: 'Git',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Collaboration Tool',
                                    name: 'GitHub',
                                  ),
                                  Skills(
                                    width: 0.34,
                                    fontSize: Sizes.mediaWidth(
                                      context: context,
                                      width: 0.011,
                                    ),
                                    category: 'Automation',
                                    name: 'GitHub Action',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      }

      ///******************/ for Mobile screen size******************************
      else {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: Sizes.mediaWidth(context: context, width: 1),
                          child: Center(
                            child: Image.asset(
                              'assets/images/photo2.png',
                              width: Sizes.mediaWidth(
                                  context: context, width: 0.35),
                              height: Sizes.mediaWidth(
                                  context: context, width: 0.35),
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ScreenNameTitle(
                            fontSize:
                                Sizes.mediaWidth(context: context, width: 0.07),
                            textOne: 'About',
                            textTwo: 'Me',
                          ),
                          Text(
                            AppText.about,
                            style: CustomTextStyle.ubuntuMedium(
                                fontSize: Sizes.mediaWidth(
                                    context: context, width: 0.04),
                                color: Colors.white),
                          ),
                          Container(
                              width: Sizes.mediaWidth(
                                  context: context, width: 0.9),
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white24),
                              child: Column(children: [
                                ScreenNameTitle(
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.045),
                                  textOne: 'My',
                                  textTwo: 'Skills',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Programing Language',
                                  name: 'Dart',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Mobile App Development',
                                  name: 'Flutter',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'State Management',
                                  name: 'GetX',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Database',
                                  name: 'Firebase',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'API Integration',
                                  name: 'RESTful APIs',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'IDEs',
                                  name: 'Android Studio, Visual Studio Code',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'UI/UX Design',
                                  name: 'Figma',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Version Control',
                                  name: 'Git',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Collaboration Tool',
                                  name: 'GitHub',
                                ),
                                Skills(
                                  width: 0.85,
                                  fontSize: Sizes.mediaWidth(
                                      context: context, width: 0.032),
                                  category: 'Automation',
                                  name: 'GitHub Action',
                                ),
                              ])),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ])));
      }
    });
  }
}
