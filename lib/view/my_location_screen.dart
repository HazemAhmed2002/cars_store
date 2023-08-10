import 'package:azlistview/azlistview.dart';
import 'package:cars_store/helper/light_theme/color_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/location_controller.dart';
import '../customWidget/custom_text.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: ColorHelper.circleAvatarColor,
            appBar: AppBar(
              backgroundColor: ColorHelper.circleAvatarColor,
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
                    color: ColorHelper.primaryColor,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.h),
                    ),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: const Icon(Icons.search)),
                ],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Selected: ",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorHelper.secondryColorText,
                        ),
                  ),
                  Text(
                    "Selected",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorHelper.secondryColorText,
                        ),
                  )
                ],
              ),
            ),
            bottomSheet: Container(
              height: 1.sh / 1.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorHelper.primaryColor,
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
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                                      .bodyLarge
                                      ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Detect ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: ColorHelper.secondryColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          controller.countriesName.isNotEmpty
                              ? SizedBox(
                                  height: 580.h,
                                  child: AzListView(
                                    indexBarOptions: const IndexBarOptions(
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
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      );
                                    },
                                    physics: const BouncingScrollPhysics(),
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
}

class CountryLists extends ISuspensionBean {
  String? title;
  String? tag;
  CountryLists({this.title, this.tag});
  @override
  String getSuspensionTag() => tag!;
}
