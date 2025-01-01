import 'package:flutter/material.dart';

class StaggeredFadeInAnimation extends StatelessWidget {
  final Widget child;
  final int delay;
  final int duration;
  final Curve curve;

  const StaggeredFadeInAnimation(
      {super.key,
      required this.child,
      required this.delay,
      this.curve = Curves.easeInOut,
      this.duration = 500});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(milliseconds: delay)),
      builder: (context, snapshot) {
        return AnimatedOpacity(
          opacity: snapshot.connectionState == ConnectionState.done ? 1.0 : 0.0,
          duration: Duration(milliseconds: duration),
          curve: Curves.easeInOut,
          child: child,
        );
      },
    );
  }
}
