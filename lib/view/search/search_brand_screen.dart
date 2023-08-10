import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SearchBrandScreen extends StatelessWidget {
  SearchBrandScreen({super.key});
  List<String> dataList = [
    'Hot',
    'Sedan',
    'SUV',
    'Luxury',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.circleAvatarColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.circleAvatarColor,
        leading: IconButton(
            onPressed: () {
              Get.to(SearchScreen());
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorHelper.iconColor,
            )),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(25.r)),
          height: 30.h,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIconColor: ColorHelper.iconColor,
              suffixIconColor: ColorHelper.iconColor,
              prefixIcon: const Icon(
                Icons.search,
                size: 20,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 14,
                color: ColorHelper.iconColor,
              ),
              suffix: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  size: 17,
                ),
              ),
              isCollapsed: true,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Image.asset('assets/images/mazda_logo.png'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mazda",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Brand introduction",
                            style: TextStyle(
                                fontSize: 12.sp, color: ColorHelper.iconColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "16",
                        style: TextStyle(
                            fontSize: 20.sp, color: ColorHelper.secondryColor),
                      ),
                      Text(
                        "Available",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorHelper.iconColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  )),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 20.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {},
                                child: Text(
                                  dataList[index],
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: ColorHelper.iconColor),
                                ),
                              ),
                              itemCount: dataList.length,
                              separatorBuilder: (context, index) => SizedBox(
                                width: 15.w,
                              ),
                            ),
                          ),
                        ),
                        Row(children: [
                          Text(
                            "All",
                            style: TextStyle(
                                fontSize: 12, color: ColorHelper.secondryColor),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 11, color: ColorHelper.secondryColor),
                        ])
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: SizedBox(
                        height: 180.h,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      color: ColorHelper.circleAvatarColor,
                                      border: Border.all(
                                          color: ColorHelper.circleAvatarColor),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.favorite_border,
                                              size: 20,
                                              color: ColorHelper.iconColor,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          'assets/images/car_1.png',
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          "Mazda Axela",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "\$23,500",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: ColorHelper.secondryColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 15.w,
                                ),
                            itemCount: 4),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "News",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(children: [
                              Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ColorHelper.secondryColor),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 11, color: ColorHelper.secondryColor),
                            ]),
                          )
                        ]),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h, bottom: 18.h),
                      child: SizedBox(
                        height: 234.h,
                        child: ListView.separated(
                            itemBuilder: (context, index) => Container(
                                  height: 86.h,
                                  decoration: BoxDecoration(
                                      color: ColorHelper.circleAvatarColor,
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                          color:
                                              ColorHelper.circleAvatarColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "2021 Mazda 6 sedan adds standard Apple CarPlay",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                      fontSize: 14.sp),
                                                ),
                                                Text(
                                                  "By Albertine  Sep 13,2020",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: ColorHelper
                                                          .iconColor),
                                                ),
                                              ]),
                                        ),
                                        Image.asset(
                                          'assets/images/car_1.png',
                                          height: 66.h,
                                          width: 66.w,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 10.h,
                                ),
                            itemCount: 4),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Videos",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(children: [
                              Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ColorHelper.secondryColor),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 11, color: ColorHelper.secondryColor),
                            ]),
                          )
                        ]),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => SizedBox(
                                width: 150.w,
                                height: 130.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/carr.png'),
                                    const Text("Mazda 6-test 01"),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 15.w,
                              ),
                          itemCount: 5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
