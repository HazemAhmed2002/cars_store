import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text;
  TextStyle? style;
  TextAlign? textAlign;
  CustomText({this.style, this.text, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: style,
      textAlign: textAlign,
    );
  }
}
