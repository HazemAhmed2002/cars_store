import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData? iconData;
  Color? color;
  double? size;
  CustomIcon({this.iconData, this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}
