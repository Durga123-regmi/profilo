import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PageTransition extends PageRouteBuilder {
  Widget? w;
  PageTransition({this.w})
      : super(
            reverseTransitionDuration: Duration(milliseconds: 250),
            transitionDuration: Duration(milliseconds: 250),
            transitionsBuilder: (context, anim1, anim2, w) {
              final anim = CurvedAnimation(
                  curve: const Interval(0.1, 1, curve: Curves.linear),
                  parent: anim1);
              return FadeTransition(
                opacity: anim,
                child: w,
              );
            },
            pageBuilder: (context, anim1, anim2) {
              return w!;
            });
}
