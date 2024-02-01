import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/widgets/contact_widget.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/screen_name_title.dart';

class ContactPage extends StatefulWidget {
  final Function() onTap;
  const ContactPage({super.key, required this.onTap});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
              child: Column(
                children: [
                  ScreenNameTitle(
                    fontSize: cw! * 0.038,
                    textOne: 'Contact',
                    textTwo: 'Me',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContactTextWidget(
                        iconSize: cw! * 0.025,
                        fontSize: cw! * 0.02,
                        icon: CupertinoIcons.envelope_fill,
                        heading: 'E-mail',
                        title: AppText.email,
                      ),
                      ContactTextWidget(
                        iconSize: cw! * 0.025,
                        fontSize: cw! * 0.02,
                        icon: Icons.phone_android_rounded,
                        heading: 'Phone number',
                        title: AppText.phone,
                      ),
                      SocialLink(
                        fontSize: cw! * 0.025,
                        iconSize: cw! * 0.03,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Footer(
                    onTap: widget.onTap,
                    fontSize: cw! * 0.015,
                    iconSize: cw! * 0.04,
                  )
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
                    fontSize: cw! * 0.06,
                    textOne: 'Contact',
                    textTwo: 'Me',
                  ),
                  ContactTextWidget(
                    iconSize: cw! * 0.045,
                    fontSize: cw! * 0.035,
                    icon: CupertinoIcons.envelope_fill,
                    heading: 'E-mail',
                    title: AppText.email,
                  ),
                  ContactTextWidget(
                    iconSize: cw! * 0.045,
                    fontSize: cw! * 0.035,
                    icon: Icons.phone_android_rounded,
                    heading: 'Phone number',
                    title: AppText.phone,
                  ),
                  SocialLink(
                    fontSize: cw! * 0.045,
                    iconSize: cw! * 0.07,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Footer(
                    onTap: widget.onTap,
                    fontSize: cw! * 0.03,
                    iconSize: cw! * 0.09,
                  ),
                ],
              ),
            ));
      }
    });
  }
}
