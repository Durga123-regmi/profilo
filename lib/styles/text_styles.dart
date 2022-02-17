import 'package:flutter/material.dart';

class MyTextStyles extends TextStyle {
  double? fs;
  FontWeight? fw;
  Color? fontColor;

  MyTextStyles(
      {this.fontColor = Colors.black,
      this.fw = FontWeight.normal,
      this.fs = 12})
      : super(fontSize: fs, fontWeight: fw, color: fontColor);
}
