import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/news/news_details.dart';
import 'package:cars_store/view/video/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SearchModelScreen extends StatelessWidget {
  const SearchModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHelper.circleAvatarColor,
        appBar: AppBar(
          backgroundColor: ColorHelper.circleAvatarColor,
          leading: IconButton(
              onPressed: () {
                // Get.to(SearchScreen());
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.w,
                    height: 90.h,
                    child:
                        Center(child: Image.asset('assets/images/car_1.png')),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lexus LC",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lexus/Luxury/The 2.3L EcoBoost",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: ColorHelper.iconColor,
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        "\$456,800-\$486,800",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorHelper.secondryColor,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 75.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Container(
                                  width: 110.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(15.r)),
                                  child:
                                      Image.asset('assets/images/carList.jpeg'),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 15.w,
                                ),
                            itemCount: 4),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25.h, bottom: 25.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Lexus LC price list",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(children: [
                                  Text(
                                    "All",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorHelper.secondryColor),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      size: 11,
                                      color: ColorHelper.secondryColor),
                                ]),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 150.h,
                        child: ListView.separated(
                            itemBuilder: (context, index) => Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: ColorHelper.iconColor)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "500h Luxury",
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                            Text(
                                              "\$456,800",
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorHelper
                                                      .secondryColor),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "3456 cc,Automatic,Petrol,15.4kmpl",
                                          style: TextStyle(
                                              color: ColorHelper.iconColor),
                                        )
                                      ]),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 15.h,
                                ),
                            itemCount: 3),
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
                              onTap: () {
                                Get.to(const NewsDetailsScreen());
                              },
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
                          height: 185.h,
                          child: ListView.separated(
                              itemBuilder: (context, index) => Container(
                                    height: 86.h,
                                    decoration: BoxDecoration(
                                        color: ColorHelper.circleAvatarColor,
                                        borderRadius:
                                            BorderRadius.circular(15.r),
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
                                                  const Text("data"),
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
                              onTap: () {
                                Get.to(VideoScreen());
                              },
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
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => SizedBox(
                                  width: 150.w,
                                  height: 130.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      const Text(
                        "Similar cars",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
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
                                            color:
                                                ColorHelper.circleAvatarColor),
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
                                                color:
                                                    ColorHelper.secondryColor),
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
                    ],
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
