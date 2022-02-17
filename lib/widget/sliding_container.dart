import 'package:flutter/material.dart';
import 'package:profilo/model/profilemode.dart';
import 'package:profilo/styles/text_styles.dart';
import 'package:profilo/transition/tween_fade_animation.dart';

class SlidingContainer extends StatelessWidget {
  ProfileModel? datas;
  SlidingContainer({this.datas});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.7,
      width: width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: width,
          height: height * 0.6,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.01, horizontal: height * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Text(
                    datas!.name!,
                    style: MyTextStyles(fs: 30, fw: FontWeight.w500),
                  ),
                ),
                Center(
                  child: Padding(
                    child: TweenFadeAnimation(
                      time: 1000,
                      begin: 0,
                      end: 1,
                      child: Text(
                        datas!.details!,
                        style: MyTextStyles(fs: 16),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.01,
                      horizontal: height * 0.05,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
