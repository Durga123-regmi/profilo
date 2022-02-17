import 'package:flutter/material.dart';

class TweenFadeAnimation extends StatelessWidget {
  int? time;
  double? begin;
  double? end;
  Widget? child;

  TweenFadeAnimation({this.time, this.begin, this.end, this.child});

  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      curve: Curves.slowMiddle,
      tween: Tween<double>(begin: begin, end: end),
      builder: (BuildContext context, double value, _) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      duration: Duration(milliseconds: time!),
    );
  }
}
