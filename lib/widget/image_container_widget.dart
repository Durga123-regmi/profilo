import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilo/model/profile_list.dart';
import 'package:profilo/widget/image_widget.dart';

class ImageContainer extends StatelessWidget {
  double? radius;
  String? url;
  ImageContainer({this.url, this.radius});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      shape: BoxShape.circle,
      elevation: 10,
      color: Colors.transparent,
      child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: radius,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: ImageWidget(
              url: url,
            )),
          )),
    );
  }
}
