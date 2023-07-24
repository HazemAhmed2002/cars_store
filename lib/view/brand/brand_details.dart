import 'package:azlistview/azlistview.dart';
import 'package:cars_store/controllers/location_controller.dart';
import 'package:cars_store/view/brand/show_brand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CountryLists extends ISuspensionBean {
  String? title;
  String? tag;
  CountryLists({this.title, this.tag});
  @override
  String getSuspensionTag() => tag!;
}

class BrandDetailsScreen extends GetView<LocationController> {
  const BrandDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 80.h,
            title: Text(
              "Brands",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                color: Color(0xff8E8E93),
                size: 30.h,
                Icons.arrow_back,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular brands",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.spaceBetween,
                    spacing: 15.w,
                    children: List.generate(
                        7,
                        (index) => Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                height: 75.w,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(ShowBrandScreen());
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/mercedes-logo.png',
                                        height: 40.h,
                                        width: 30.w,
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        "Mercedes",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                  ),
                  controller.countries.length != 0
                      ? Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Container(
                            height: 580.h,
                            child: AzListView(
                              indexBarItemHeight: 17.h,
                              indexBarMargin: EdgeInsets.only(bottom: 120.h),
                              indexBarOptions: IndexBarOptions(
                                  indexHintTextStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      fontSize: 20.sp),
                                  indexHintChildAlignment: Alignment.center,
                                  indexHintAlignment: Alignment.centerRight,
                                  indexHintDecoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(5.r),
                                  )),
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
                              physics: const BouncingScrollPhysics(),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
