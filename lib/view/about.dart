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
      mh = MediaQuery.sizeOf(context).height;
      mw = MediaQuery.sizeOf(context).width;
      ch = constraints.maxHeight;
      cw = constraints.maxWidth;

      ///******************/ for Desktop screen size******************************
      if (constraints.maxWidth >= minDesktopWidth) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.1),
          child: SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: cw! * 0.25,
                      child: Image.asset(
                        'assets/images/photo2.png',
                        width: cw! * 0.2,
                        height: cw! * 0.2,
                      )),
                  SizedBox(
                    width: cw! * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenNameTitle(
                          fontSize: cw! * 0.038,
                          textOne: 'Contact',
                          textTwo: 'Me',
                        ),
                        Text(
                          AppText.about,
                          style: CustomTextStyle.ptSans(
                              fontSize: cw! * 0.017, color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white24),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                fontSize: cw! * 0.022,
                                textOne: 'My',
                                textTwo: 'Skills',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SkillsContainer(
                                    image: 'flutter',
                                    name: 'Flutter',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'dart',
                                    name: 'Dart',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'getx',
                                    name: 'Getx',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'firebase',
                                    name: 'Firebase',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SkillsContainer(
                                    image: 'restfull_api',
                                    name: 'RESTful APIs',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'figma',
                                    name: 'Figma',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'git',
                                    name: 'Git',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
                                  ),
                                  SkillsContainer(
                                    image: 'github',
                                    name: 'GitHub',
                                    imageHeight: cw! * 0.035,
                                    sizeBoxHeight: cw! * 0.1,
                                    radius: cw! * 0.025,
                                    fontSize: cw! * 0.014,
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
                    SizedBox(
                        width: cw! * 1,
                        child: Center(
                          child: Image.asset(
                            'assets/images/photo2.png',
                            width: cw! * 0.35,
                            height: cw! * 0.35,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenNameTitle(
                          fontSize: cw! * 0.06,
                          textOne: 'Contact',
                          textTwo: 'Me',
                        ),
                        Text(
                          AppText.about,
                          style: CustomTextStyle.ptSans(
                              fontSize: cw! * 0.034, color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white24),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                fontSize: cw! * 0.045,
                                textOne: 'My',
                                textTwo: 'Skills',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SkillsContainer(
                                    image: 'flutter',
                                    name: 'Flutter',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SkillsContainer(
                                    image: 'dart',
                                    name: 'Dart',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SkillsContainer(
                                    image: 'getx',
                                    name: 'Getx',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SkillsContainer(
                                    image: 'firebase',
                                    name: 'Firebase',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SkillsContainer(
                                    image: 'restfull_api',
                                    name: 'RESTful APIs',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SkillsContainer(
                                    image: 'figma',
                                    name: 'Figma',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SkillsContainer(
                                    image: 'git',
                                    name: 'Git',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SkillsContainer(
                                    image: 'github',
                                    name: 'GitHub',
                                    imageHeight: cw! * 0.055,
                                    sizeBoxHeight: cw! * 0.2,
                                    radius: cw! * 0.045,
                                    fontSize: cw! * 0.025,
                                  ),
                                  SizedBox(
                                    height: cw! * 0.2,
                                    width: cw! * 0.2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                )));
      }
    });
  }
}
