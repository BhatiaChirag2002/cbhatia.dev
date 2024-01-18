import 'package:flutter/material.dart';
import 'package:portfolio/utils/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        child: (constraints.maxWidth >= minDesktopWidth) ? desktop() : mobile(),
      );
    });
  }

  Widget desktop() {
    return Container(
      height: h! * 0.925,
      width: MediaQuery.sizeOf(context).width * 1,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/background/one.jpg'),
        fit: BoxFit.cover,
        opacity: 0.6,
      )),
    );
  }

  Widget mobile() {
    return Container(
      height: h! * 0.925,
      width: MediaQuery.sizeOf(context).width * 1,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/one.jpg'),
              fit: BoxFit.cover,
              opacity: 0.6)),
    );
  }
}
