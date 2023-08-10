import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar CustomAppBar = AppBar(
  toolbarHeight: 90,
  elevation: 0.0,
  backgroundColor: ColorHelper.circleAvatarColor,
  title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20)),
            height: 35.h,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    color: ColorHelper.iconColor,
                    Icons.search,
                    size: 18.w,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: ColorHelper.iconColor,
                  )),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: ColorHelper.secondryColor,
                  )),
            ))
      ]),
);
