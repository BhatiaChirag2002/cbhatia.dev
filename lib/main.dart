import 'package:flutter/material.dart';
import 'package:portfolio/view/dashboard.dart';

void main() {
  runApp(const MyWebPage());
}

class MyWebPage extends StatelessWidget {
  const MyWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chirag Bhatia Portfolio',
      home: Dashboard(),
    );
  }
}
