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
        backgroundColor: const Color(0xffF1F2F3),
        appBar: AppBar(
          backgroundColor: const Color(0xffF1F2F3),
          leading: IconButton(
              onPressed: () {
                // Get.to(SearchScreen());
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff8E8E93),
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
                prefixIconColor: const Color(0xff8E8E93),
                suffixIconColor: const Color(0xff8E8E93),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff8E8E93),
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
                          color: const Color(0xff8E8E93),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      const Text(
                        "\$456,800-\$486,800",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1DB854),
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
                                child: const Row(children: [
                                  Text(
                                    "All",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff1DB854)),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      size: 11, color: Color(0xff1DB854)),
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
                                  decoration: const UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          width: 1, color: Color(0xff8E8E93))),
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
                                                  color:
                                                      const Color(0xff1DB854)),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          "3456 cc,Automatic,Petrol,15.4kmpl",
                                          style: TextStyle(
                                              color: Color(0xff8E8E93)),
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
                              child: const Row(children: [
                                Text(
                                  "More",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff1DB854)),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    size: 11, color: Color(0xff1DB854)),
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
                                        color: const Color(0xffF1F2F3),
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        border: Border.all(
                                            color: const Color(0xffF1F2F3))),
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
                                Get.to(const VideoScreen());
                              },
                              child: const Row(children: [
                                Text(
                                  "More",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff1DB854)),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    size: 11, color: Color(0xff1DB854)),
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
                                        color: const Color(0xffF1F2F3),
                                        border: Border.all(
                                            color: const Color(0xffF1F2F3)),
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
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.favorite_border,
                                                size: 20,
                                                color: Color(0xff8E8E93),
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
                                                color: const Color(0xff1DB854)),
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
