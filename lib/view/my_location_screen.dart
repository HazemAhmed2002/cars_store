import 'package:azlistview/azlistview.dart';
import 'package:cars_store/customWidget/custom_text_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/location_controller.dart';
import '../customWidget/custom_text.dart';

class LocationView extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: Color(0xFFF1F2F3),
            appBar: AppBar(
              backgroundColor: Color(0xFFF1F2F3),
              leading: Icon(
                Icons.close,
                size: 30.h,
              ),
              title: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomTextFormWithRecord(
                    text: "Search",
                    height: 30.h,
                    borderRadius: 25.r,
                    color: Color(0xFFFFFFFF),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.h),
                    ),
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Image.asset(
                      "assets/images/search.png",
                      color: Color(0xFF8E8E93),
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Selected: ",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1B1B1B),
                        ),
                  ),
                  Text(
                    "Selected",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1B1B1B),
                        ),
                  )
                ],
              ),
            ),
            bottomSheet: Container(
              height: 1.sh / 1.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      25.r,
                    ),
                    topLeft: Radius.circular(25.r)),
              ),
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30.h,
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City location",
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/search.png",
                                  height: 20.h,
                                  width: 20.w,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Bangkok",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Spacer(),
                                Text(
                                  "Detect ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF1DB854),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          controller.countriesName.length != 0
                              ? Container(
                                  height: 580.h,
                                  child: AzListView(
                                    indexBarOptions: IndexBarOptions(
                                      indexHintAlignment: Alignment.centerRight,
                                    ),
                                    data: controller.item,
                                    itemCount: controller.item.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "${controller.item[index].title}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      );
                                    },
                                    physics: BouncingScrollPhysics(),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  )),
            ));
      },
    );
  }
// }
// initList(){
//
// }
}

class CountryLists extends ISuspensionBean {
  String? title;
  String? tag;
  CountryLists({this.title, this.tag});
  @override
  String getSuspensionTag() => tag!;
}
