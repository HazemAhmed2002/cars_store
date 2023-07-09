import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double? padding;
  double? height;
  double? width;
  double? borderRadius;
  Color? color;
  String? text;
  Color? colorText;
  double? fontSize;
  FontWeight? fontWeight;
  void Function()? onTap;
  CustomButton(
      {this.padding,
      this.height,
      this.width,
      this.borderRadius,
      this.color,
      this.text,
      this.colorText,
      this.fontSize,
      this.fontWeight,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding!),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            color: color,
          ),
          child: Center(
            child: Text(
              text ?? "",
              style: TextStyle(
                color: colorText,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
