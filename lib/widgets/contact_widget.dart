import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/my_flutter_app_icons.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailContactWidget extends StatelessWidget {
  final double iconSize;
  final double fontSize;
  const EmailContactWidget({
    super.key,
    required this.iconSize,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Uri uri = Uri.parse('mailto:bhatiachirag2002@gmail.com');
        launchUrl(uri);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SizedBox(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.envelope_fill,
                    color: CustomColors.yellow,
                    size: iconSize,
                  ),
                  Text(
                    '  E-mail',
                    style: CustomTextStyle.ubuntuMedium(
                        fontSize: iconSize, color: CustomColors.white),
                  )
                ],
              ),
              Text(
                AppText.email,
                style: CustomTextStyle.ubuntuMedium(
                    fontSize: fontSize, color: CustomColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneNumberContactWidget extends StatelessWidget {
  final double iconSize;
  final double fontSize;

  const PhoneNumberContactWidget({
    super.key,
    required this.iconSize,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showPhoneNumberAlert(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SizedBox(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_android_rounded,
                    color: CustomColors.yellow,
                    size: iconSize,
                  ),
                  Text(
                    '  Phone number',
                    style: CustomTextStyle.ubuntuMedium(
                        fontSize: iconSize, color: CustomColors.white),
                  )
                ],
              ),
              Text(
                AppText.phone,
                style: CustomTextStyle.ubuntuMedium(
                    fontSize: fontSize, color: CustomColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLink extends StatelessWidget {
  final double fontSize;
  final double iconSize;
  const SocialLink({
    super.key,
    required this.fontSize,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  color: CustomColors.yellow,
                  size: fontSize,
                ),
                Text(
                  '  Social Links',
                  style: CustomTextStyle.ubuntuMedium(
                      fontSize: fontSize, color: CustomColors.white),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Uri uri = Uri.parse(
                        'https://www.linkedin.com/in/bhatiachirag2002/');
                    launchUrl(uri);
                  },
                  iconSize: iconSize,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  icon: Icon(
                    MyFlutterApp.linkedin,
                    color: CustomColors.yellow,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Uri uri = Uri.parse('https://github.com/BhatiaChirag2002');
                    launchUrl(uri);
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  iconSize: iconSize,
                  icon: Icon(
                    MyFlutterApp.github,
                    color: CustomColors.yellow,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _showPhoneNumberAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text('Contact Options'),
        content: const Text('Choose the option to contact:'),
        actions: [
          CupertinoDialogAction(
            child: Text(
              'Call',
              style: TextStyle(color: CustomColors.black),
            ),
            onPressed: () {
              Navigator.pop(context);
              Uri uri = Uri.parse("tel://+918506036212");
              launchUrl(uri);
            },
          ),
          CupertinoDialogAction(
            child:
                Text('WhatsApp', style: TextStyle(color: CustomColors.black)),
            onPressed: () {
              Navigator.pop(context);
              Uri uri = Uri.parse('https://wa.me/918506036212');
              launchUrl(uri);
            },
          ),
          CupertinoDialogAction(
            child: Text('Cancel', style: TextStyle(color: CustomColors.black)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
