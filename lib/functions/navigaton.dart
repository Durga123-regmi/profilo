import 'package:flutter/material.dart';
import 'package:profilo/model/profile_list.dart';
import 'package:profilo/pages/profile_detail.dart';
import 'package:profilo/transition/page_transition.dart';

class Navigation {
  static void navigate(context, Widget widget) {
    Navigator.push(context, PageTransition(w: widget));
  }
}
