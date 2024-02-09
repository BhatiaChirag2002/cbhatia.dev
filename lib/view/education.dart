import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:timelines/timelines.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
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
                  ScreenNameTitle(
                    fontSize: Sizes.mediaWidth(context: context, width: 0.038),
                    textOne: 'My',
                    textTwo: 'Education',
                  ),
                  SizedBox(
                    width: Sizes.mediaWidth(context: context, width: 0.002),
                  ),
                  SizedBox(
                    height: Sizes.mediaWidth(context: context, width: 0.25),
                    width: Sizes.mediaWidth(context: context, width: 0.4),
                    child: Timeline.tileBuilder(
                      theme: TimelineThemeData(
                          color: CustomColors.white,
                          nodePosition: 0,
                          nodeItemOverlap: false),
                      builder: TimelineTileBuilder.fromStyle(
                        connectorStyle: ConnectorStyle.solidLine,
                        indicatorStyle: IndicatorStyle.dot,
                        contentsAlign: ContentsAlign.basic,
                        contentsBuilder: (context, index) {
                          List<Map<String, String>> timelineData = [
                            {
                              'school': AppText.schoolName,
                              'course': 'Secondary',
                              'completeYear': 'Completed 2019-20'
                            },
                            {
                              'school': AppText.schoolName,
                              'course': 'Senior Secondery (commerce)',
                              'completeYear': 'Completed 2021-22'
                            }
                          ];

                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Sizes.mediaWidth(
                                    context: context, width: 0.02),
                                horizontal: Sizes.mediaWidth(
                                    context: context, width: 0.005)),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${timelineData[index]['course']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.015),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: Sizes.mediaWidth(
                                        context: context, width: 0.01),
                                  ),
                                  Text(
                                    '${timelineData[index]['school']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.013),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: Sizes.mediaWidth(
                                        context: context, width: 0.01),
                                  ),
                                  Text(
                                    '${timelineData[index]['completeYear']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.011),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Sizes.mediaWidth(context: context, width: 0.25),
                    width: Sizes.mediaWidth(context: context, width: 0.4),
                    child: Timeline.tileBuilder(
                      theme: TimelineThemeData(
                          color: CustomColors.white,
                          nodePosition: 0,
                          nodeItemOverlap: false),
                      builder: TimelineTileBuilder.fromStyle(
                        connectorStyle: ConnectorStyle.solidLine,
                        indicatorStyle: IndicatorStyle.dot,
                        contentsAlign: ContentsAlign.basic,
                        contentsBuilder: (context, index) {
                          List<Map<String, String>> timelineData = [
                            {
                              'school': AppText.collageName,
                              'course': 'Bachelor of Compter Applications(BCA)',
                              'completeYear': 'Pursuing 2023-26'
                            },
                          ];

                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Sizes.mediaWidth(
                                    context: context, width: 0.02),
                                horizontal: Sizes.mediaWidth(
                                    context: context, width: 0.005)),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${timelineData[index]['course']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.015),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: Sizes.mediaWidth(
                                        context: context, width: 0.01),
                                  ),
                                  Text(
                                    '${timelineData[index]['school']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.013),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: Sizes.mediaWidth(
                                        context: context, width: 0.01),
                                  ),
                                  Text(
                                    '${timelineData[index]['completeYear']}',
                                    style: CustomTextStyle.ubuntuMedium(
                                        fontSize: Sizes.mediaWidth(
                                            context: context, width: 0.011),
                                        color: CustomColors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 1,
                      ),
                    ),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScreenNameTitle(
                    fontSize: Sizes.mediaWidth(context: context, width: 0.06),
                    textOne: 'My',
                    textTwo: 'Education',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:
                              Sizes.mediaWidth(context: context, width: 0.6),
                          width:
                              Sizes.mediaWidth(context: context, width: 0.98),
                          child: Timeline.tileBuilder(
                            theme: TimelineThemeData(
                                color: CustomColors.white,
                                nodePosition: 0,
                                nodeItemOverlap: false),
                            builder: TimelineTileBuilder.fromStyle(
                              connectorStyle: ConnectorStyle.solidLine,
                              indicatorStyle: IndicatorStyle.dot,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) {
                                List<Map<String, String>> timelineData = [
                                  {
                                    'school': AppText.schoolName,
                                    'course': 'Secondary',
                                    'completeYear': 'Completed 2019-20'
                                  },
                                  {
                                    'school': AppText.schoolName,
                                    'course': 'Senior Secondery (commerce)',
                                    'completeYear': 'Completed 2021-22'
                                  },
                                  {
                                    'school': AppText.collageName,
                                    'course':
                                        'Bachelor of Compter Applications(BCA)',
                                    'completeYear': 'Pursuing 2023-26'
                                  },
                                ];

                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Sizes.mediaWidth(
                                          context: context, width: 0.02),
                                      horizontal: Sizes.mediaWidth(
                                          context: context, width: 0.01)),
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${timelineData[index]['course']}',
                                          style: CustomTextStyle.ubuntuMedium(
                                              fontSize: Sizes.mediaWidth(
                                                  context: context,
                                                  width: 0.037),
                                              color: CustomColors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: Sizes.mediaWidth(
                                              context: context, width: 0.01),
                                        ),
                                        Text(
                                          '${timelineData[index]['school']}',
                                          style: CustomTextStyle.ubuntuMedium(
                                              fontSize: Sizes.mediaWidth(
                                                  context: context,
                                                  width: 0.032),
                                              color: CustomColors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: Sizes.mediaWidth(
                                              context: context, width: 0.015),
                                        ),
                                        Text(
                                          '${timelineData[index]['completeYear']}',
                                          style: CustomTextStyle.ubuntuMedium(
                                              fontSize: Sizes.mediaWidth(
                                                  context: context,
                                                  width: 00.028),
                                              color: CustomColors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
      }
    });
  }
}
