import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/size.dart';
import 'package:portfolio/utils/text_style.dart';
import 'package:portfolio/view/about.dart';
import 'package:portfolio/view/contact.dart';
import 'package:portfolio/view/home.dart';
import 'package:portfolio/widgets/dashboard_button.dart';
import 'package:portfolio/widgets/logo.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    mh = MediaQuery.sizeOf(context).height;
    mw = MediaQuery.sizeOf(context).width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldkey,
        endDrawer:
            constraints.maxWidth >= minDesktopWidth ? null : mobileDrawer(),
        backgroundColor: CustomColors.black,
        body: Column(
          children: [
            if (constraints.maxWidth >= minDesktopWidth)
              desktop()
            else
              mobile(),
            Expanded(
              child: ScrollablePositionedList.builder(
                itemCount: 3,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemBuilder: (context, index) {
                  return screens(index);
                },
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget desktop() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      width: double.maxFinite,
      height: mh! * 0.07,
      child: Row(
        children: [
          LogoAndName(
            onTap: () {
              itemScrollController.jumpTo(index: 0);
            },
          ),
          const Spacer(),
          dashboardButton('Home', 0),
          dashboardButton('About', 1),
          dashboardButton('Contact', 2),
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      width: double.maxFinite,
      height: mh! * 0.07,
      child: Row(
        children: [
          LogoAndName(
            onTap: () {
              itemScrollController.jumpTo(index: 0);
            },
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              scaffoldkey.currentState?.openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: CustomColors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget mobileDrawer() {
    return Drawer(
      width: 200,
      backgroundColor: CustomColors.black,
      child: Column(children: [
        const SizedBox(
          height: 22.0,
        ),
        dashboardButton('Home', 0),
        const SizedBox(
          height: 22.0,
        ),
        dashboardButton('About', 1),
        const SizedBox(
          height: 22.0,
        ),
        dashboardButton('Contact', 2),
        const SizedBox(
          height: 22.0,
        ),
        DashboardCloseButton(
            label: 'Close',
            icon: Icons.close,
            onTap: () {
              scaffoldkey.currentState?.closeEndDrawer();
            })
      ]),
    );
  }

  Widget dashboardButton(String label, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: GestureDetector(
        onTap: () {
          itemScrollController.scrollTo(
            index: index,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        },
        child: SizedBox(
            child: Row(
          children: [
            const SizedBox(
              width: 3.0,
            ),
            Text(label,
                style: CustomTextStyle.diphylleia(
                    fontSize: 16, color: CustomColors.white))
          ],
        )),
      ),
    );
  }

  Widget screens(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const AboutPage();
      case 2:
        return ContactPage(onTap: (){
          itemScrollController.jumpTo(index: 0);
        },);

      default:
        return const HomePage();
    }
  }
}
