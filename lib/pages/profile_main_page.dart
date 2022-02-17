import 'package:flutter/material.dart';
import 'package:profilo/functions/navigaton.dart';
import 'package:profilo/model/profile_list.dart';
import 'package:profilo/pages/profile_detail.dart';
import 'package:profilo/styles/text_styles.dart';
import 'package:profilo/transition/page_transition.dart';
import 'package:profilo/widget/hero_widget.dart';
import 'package:profilo/widget/image_container_widget.dart';
import 'package:profilo/widget/list_item_widget.dart';
import 'package:profilo/widget/main_item_widget.dart';

class ProfileMainPage extends StatefulWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  _ProfileMainPageState createState() => _ProfileMainPageState();
}

class _ProfileMainPageState extends State<ProfileMainPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ListView.builder(
              itemCount: ProfileList().fruitList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(height * 0.01),
                  child: InkWell(
                      onTap: () {
                        Navigation.navigate(
                            context,
                            ProfileDetails(
                              datas: ProfileList().fruitList[index],
                            ));
                      },
                      child: ListItemWidget(
                        child: MainItem(
                          index: index,
                        ),
                      )),
                );
              }),
        ),
      ),
    );
  }
}
