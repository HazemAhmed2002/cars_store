import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/main%20screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class customCardBrand extends StatelessWidget {
  customCardBrand({super.key, required this.index});
  int? index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeConrtoller>(
        init: HomeConrtoller(),
        builder: (controller) {
          return Container(
            padding: EdgeInsets.all(10.w),
            width: 102.w,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Image.network(
                  '${controller.homeModel.data!.brands![index!].logo}',
                  width: 70.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "${controller.homeModel.data!.brands![index!].name}",
                  style: TextStyle(fontSize: 12, color: ColorHelper.iconColor),
                )
              ],
            ),
          );
        });
  }
}
