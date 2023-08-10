import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMaterialButton extends StatelessWidget {
  CustomMaterialButton({
    super.key,
    required this.onPressed,
  });
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(25.sp),
      )),
      onPressed: onPressed,
      color: ColorHelper.secondryColor,
      textColor: Colors.white,
      minWidth: 315.w,
      height: 50.h,
      child: Text(
        "Continue",
        style: TextStyle(fontSize: 16.sp),
      ),
    );
  }
}
