import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                    textOne: 'Contact',
                    textTwo: 'Me',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EmailContactWidget(
                        iconSize: Sizes.mediaWidth(context: context, width: 0.025),
                        fontSize: Sizes.mediaWidth(context: context, width: 0.02),
                      ),
                      PhoneNumberContactWidget(
                        iconSize: Sizes.mediaWidth(context: context, width: 0.025),
                        fontSize: Sizes.mediaWidth(context: context, width: 0.02),
                      ),
                      SocialLink(
                        fontSize: Sizes.mediaWidth(context: context, width: 0.025),
                        iconSize: Sizes.mediaWidth(context: context, width: 0.03),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Footer(
                    onTap: widget.onTap,
                    fontSize: Sizes.mediaWidth(context: context, width: 0.015),
                    iconSize: Sizes.mediaWidth(context: context, width: 0.04),
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
                    fontSize: Sizes.mediaWidth(context: context, width: 0.06),
                    textOne: 'Contact',
                    textTwo: 'Me',
                  ),
                  EmailContactWidget(
                    iconSize: Sizes.mediaWidth(context: context, width: 0.045),
                    fontSize: Sizes.mediaWidth(context: context, width: 0.035),
                  ),
                  PhoneNumberContactWidget(
                    iconSize: Sizes.mediaWidth(context: context, width: 0.045),
                    fontSize: Sizes.mediaWidth(context: context, width: 0.035),
                  ),
                  SocialLink(
                    fontSize: Sizes.mediaWidth(context: context, width: 0.045),
                    iconSize: Sizes.mediaWidth(context: context, width: 0.07),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Footer(
                    onTap: widget.onTap,
                    fontSize: Sizes.mediaWidth(context: context, width: 0.03),
                    iconSize: Sizes.mediaWidth(context: context, width: 0.09),
                  ),
                ],
              ),
            ));
      }
    });
  }
}
