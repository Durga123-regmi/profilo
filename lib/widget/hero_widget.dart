import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  String? tag;
  Widget? child;
  HeroWidget({this.tag, this.child});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: tag!, child: child!);
  }
}
