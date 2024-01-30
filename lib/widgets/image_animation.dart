
import 'package:flutter/material.dart';

class HomeImageAnimation extends StatefulWidget {
  const HomeImageAnimation({
    super.key,
  });

  @override
  State<HomeImageAnimation> createState() => _HomeImageAnimationState();
}

class _HomeImageAnimationState extends State<HomeImageAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 1))
      ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0,0), end: const Offset(0.1, 0.1))
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        'assets/images/photo1.png'
      ),
    );
  }
}