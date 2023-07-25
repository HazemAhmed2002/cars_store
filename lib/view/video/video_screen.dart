import 'package:cars_store/view/news/news_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/porsche.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Color(0xff8E8E93),
                              )),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 15.w,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                child: Text(
                  "2019 Macan Facelift Launched;",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abbey",
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff1B1B1B)),
                        ),
                        Text(
                          "Aug 31,2020 / 89623 Views",
                          style: TextStyle(
                              fontSize: 10.sp, color: const Color(0xff8E8E93)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 24.h,
                      width: 71.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xff1DB854),
                        ),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "+ Follow",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff1DB854),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  top: 10.h,
                  bottom: 30.h,
                ),
                child: Container(
                  width: double.infinity,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F2F3),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.h),
                    child: Row(
                      children: [
                        Image.asset('assets/images/car_2.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Porsche-Taycan",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "McLaren/Luxury",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff8E8E93)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$634,800",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff1DB854)),
                            ),
                            Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff8E8E93)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: Text(
                  "Related",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, bottom: 20.h, top: 10.h),
                child: SizedBox(
                  height: 187.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) => Container(
                            height: 86.h,
                            decoration: BoxDecoration(
                                color: const Color(0xffF1F2F3),
                                borderRadius: BorderRadius.circular(15.r),
                                border:
                                    Border.all(color: const Color(0xffF1F2F3))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "2019 Macan Facelift Launched; More Affordable Than Before",
                                            maxLines: 1,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(fontSize: 14.sp),
                                          ),
                                          Text(
                                            "By  Sonny  Jul 29,2020",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff8E8E93)),
                                          ),
                                        ]),
                                  ),
                                  Image.asset(
                                    'assets/images/porsche.png',
                                    height: 66.h,
                                    width: 66.w,
                                    fit: BoxFit.fitHeight,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 83.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: const Color(0xffF1F2F3),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            bottom: 20.h,
            right: 20.w,
            top: 10.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40.h,
                width: 220.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Say something…",
                      labelStyle: const TextStyle(fontSize: 8),
                      prefixIcon: Icon(
                        Icons.border_color_outlined,
                        size: 17.w,
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return ReviewNewsScreen();
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.chat_bubble_outline,
                      size: 17,
                      color: Color(0xff8E8E93),
                    ),
                    Text(
                      "83",
                      style: TextStyle(fontSize: 10.sp),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 18,
                    color: Color(0xff8E8E93),
                  ),
                  Text(
                    "99",
                    style: TextStyle(fontSize: 10.sp),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star_border,
                    size: 18,
                    color: Color(0xff8E8E93),
                  ),
                  Text(
                    "collect",
                    style: TextStyle(fontSize: 10.sp),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
