import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      ///******************/ for Desktop screen size******************************
      if (constraints.maxWidth >= Sizes.minDesktopWidth) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.1),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  ScreenNameTitle(
                    fontSize: Sizes.mediaWidth(context: context, width: 0.038),
                    textOne: 'My',
                    textTwo: 'Projects',
                  ),
                  Row(
                    children: [
                      ProjectContainer(
                        height: Sizes.mediaWidth(context: context, width: 0.31),
                        padding:
                            Sizes.mediaWidth(context: context, width: 0.011),
                        textPadding:
                            Sizes.mediaWidth(context: context, width: 0.012),
                        projectNameFontSize:
                            Sizes.mediaWidth(context: context, width: 0.025),
                        skillsFontSize:
                            Sizes.mediaWidth(context: context, width: 0.018),
                        imageName: 'calculator',
                        projectName: 'Calculator',
                        skillsName: 'Flutter, Dart, Getx',
                        link: 'https://github.com/BhatiaChirag2002/Calculator',
                      ),
                      ProjectContainer(
                        height: Sizes.mediaWidth(context: context, width: 0.31),
                        padding:
                            Sizes.mediaWidth(context: context, width: 0.011),
                        textPadding:
                            Sizes.mediaWidth(context: context, width: 0.012),
                        projectNameFontSize:
                            Sizes.mediaWidth(context: context, width: 0.025),
                        skillsFontSize:
                            Sizes.mediaWidth(context: context, width: 0.018),
                        imageName: 'weather',
                        projectName: 'Weather Sphere',
                        skillsName: 'Flutter, Dart, Getx, RESTful APIs, AdMob',
                        link:
                            'https://github.com/BhatiaChirag2002/Weather-Sphere',
                      ),
                    ],
                  ),
                ],
              ),
            ));
      }

      ///******************/ for Mobile screen size******************************
      else {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.1),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  ScreenNameTitle(
                    fontSize: Sizes.mediaWidth(context: context, width: 0.06),
                    textOne: 'My',
                    textTwo: 'Projects',
                  ),
                  ProjectContainer(
                    height: Sizes.mediaWidth(context: context, width: 0.7),
                    padding: Sizes.mediaWidth(context: context, width: 0.01),
                    projectNameFontSize:
                        Sizes.mediaWidth(context: context, width: 0.055),
                    skillsFontSize:
                        Sizes.mediaWidth(context: context, width: 0.046),
                    textPadding:
                        Sizes.mediaWidth(context: context, width: 0.02),
                    imageName: 'calculator',
                    projectName: 'Calculator',
                    skillsName: 'Flutter, Dart, Getx',
                    link: 'https://github.com/BhatiaChirag2002/Calculator',
                  ),
                  ProjectContainer(
                    height: Sizes.mediaWidth(context: context, width: 0.7),
                    padding: Sizes.mediaWidth(context: context, width: 0.01),
                    projectNameFontSize:
                        Sizes.mediaWidth(context: context, width: 0.055),
                    skillsFontSize:
                        Sizes.mediaWidth(context: context, width: 0.046),
                    textPadding:
                        Sizes.mediaWidth(context: context, width: 0.02),
                    imageName: 'weather',
                    projectName: 'Weather Sphere',
                    skillsName: 'Flutter, Dart, Getx, RESTful APIs, AdMob',
                    link: 'https://github.com/BhatiaChirag2002/Weather-Sphere',
                  ),
                ],
              ),
            ));
      }
    });
  }
}

class ProjectContainer extends StatelessWidget {
  final double height;
  final double padding;
  final double textPadding;
  final String imageName;
  final double projectNameFontSize;
  final double skillsFontSize;
  final String projectName;
  final String skillsName;
  final String link;
  const ProjectContainer(
      {super.key,
      required this.height,
      required this.padding,
      required this.imageName,
      required this.textPadding,
      required this.skillsFontSize,
      required this.projectName,
      required this.skillsName,
      required this.projectNameFontSize,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      child: GestureDetector(
        onTap: () {
          Uri uri = Uri.parse(link.toString());
          launchUrl(uri);
        },
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Sizes.mediaWidth(context: context, width: 0.01)),
          height: height / 1.35,
          width: height,
          decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.asset(
                    'assets/projects/$imageName.png',
                    width: height,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: EdgeInsets.only(top: textPadding),
                child: Text(
                  projectName,
                  style: CustomTextStyle.ubuntuMedium(
                      fontSize: projectNameFontSize,
                      color: CustomColors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
