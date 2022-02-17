import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  String? url;
  ImageWidget({this.url});

  @override
  Widget build(BuildContext context) {
    return Image(fit: BoxFit.fill, image: NetworkImage(url!));
  }
}
