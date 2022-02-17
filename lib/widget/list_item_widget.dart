import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  Widget? child;
  ListItemWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10, child: child);
  }
}
