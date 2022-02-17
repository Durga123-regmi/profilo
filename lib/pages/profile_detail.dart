import 'package:flutter/material.dart';
import 'package:profilo/model/profilemode.dart';
import 'package:profilo/styles/text_styles.dart';
import 'package:profilo/transition/tween_animation.dart';
import 'package:profilo/transition/tween_fade_animation.dart';
import 'package:profilo/widget/hero_widget.dart';
import 'package:profilo/widget/image_container_widget.dart';
import 'package:profilo/widget/sliding_container.dart';

class ProfileDetails extends StatefulWidget {
  ProfileModel? datas;
  ProfileDetails({this.datas});

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: TweenAnimation(
                w: SlidingContainer(
              datas: widget.datas,
            )),
          ),
          Align(
              alignment: const Alignment(0, -0.6),
              child: HeroWidget(
                  tag: widget.datas!.url!,
                  child: ImageContainer(
                    url: widget.datas!.url,
                    radius: 90,
                  ))),
        ],
      ),
    ));
  }
}
