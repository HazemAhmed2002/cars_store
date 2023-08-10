import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customCardBrand extends StatelessWidget {
  const customCardBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          Image.asset(
            'assets/images/toyota-logo.png',
            width: 80.w,
            height: 60.h,
          ),
          Text(
            "Toyota",
            style: TextStyle(fontSize: 12, color: ColorHelper.iconColor),
          )
        ],
      ),
    );
  }
}
