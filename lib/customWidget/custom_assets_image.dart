import 'package:flutter/material.dart';

class AssetsImage extends StatelessWidget {
  double? height;
  double? width;
  BoxFit? fit;
  String? text;
  AssetsImage({this.text, this.height, this.width, this.fit});
  @override
  Widget build(BuildContext context) {
    return Image.asset(text!, height: height, width: width, fit: fit);
  }
}
