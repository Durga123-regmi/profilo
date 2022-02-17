import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilo/model/profile_list.dart';
import 'package:profilo/styles/text_styles.dart';

import 'hero_widget.dart';
import 'image_container_widget.dart';

class MainItem extends StatelessWidget {
  int? index;

  MainItem({this.index});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.all(height * 0.01),
              child: HeroWidget(
                tag: ProfileList().fruitList[index!].url,
                child: ImageContainer(
                  radius: 50,
                  url: ProfileList().fruitList[index!].url,
                ),
              )),
        ),
        Expanded(
            flex: 4,
            child: Hero(
              tag: ProfileList().fruitList[index!].url! + "a",
              child: Material(
                elevation: 0,
                color: Colors.transparent,
                child: Text(
                  ProfileList().fruitList[index!].name!,
                  style: MyTextStyles(fs: 24, fw: FontWeight.w500),
                ),
              ),
            )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.teal,
                )),
            Text(
              "\$2.5",
              style: MyTextStyles(fs: 14, fw: FontWeight.bold),
            )
          ],
        ))
      ],
    );
  }
}
