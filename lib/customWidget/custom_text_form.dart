import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.labelText,
    required this.suffixIcon,
    required this.obscureText,
  });
  final String labelText;
  final IconData suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          suffix: IconButton(
              iconSize: 18.h,
              onPressed: () {},
              icon: Icon(
                suffixIcon,
              ))),
    );
  }
}
