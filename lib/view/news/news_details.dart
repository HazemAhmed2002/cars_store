import 'package:cars_store/view/news/news_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class NewsDetailsScreen extends StatelessWidget {
  NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff8E8E93),
            )),
        title: Text(
          "News",
          style: TextStyle(fontSize: 14.sp, color: const Color(0xff1B1B1B)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: const Color(0xffF1F2F3)),
              child: Icon(
                Icons.share,
                size: 15.w,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Porsche's First Electric Car Named",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
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
              Text(
                  maxLines: 7,
                  style: TextStyle(fontSize: 12.sp, color: Color(0xff8E8E93)),
                  "Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year,ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition."),
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
                child: Image.asset(
                  'assets/images/porsche.png',
                  width: double.infinity,
                  height: 180.h,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Color(0xffF1F2F3),
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
                                fontSize: 10.sp, color: Color(0xff8E8E93)),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$634,800",
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xff1DB854)),
                          ),
                          Text(
                            "Price",
                            style: TextStyle(
                                fontSize: 10.sp, color: Color(0xff8E8E93)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 35.h),
                child: Text(
                  'Porsche says that the name Taycan roughly translates to “lively young horse”, paying homage to the leaping horse that has',
                  maxLines: 2,
                  style: TextStyle(fontSize: 12.sp, color: Color(0xff8E8E93)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF1F2F3),
                    borderRadius: BorderRadius.circular(7.r)),
                width: 162.w,
                height: 25.h,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Text(
                        "Rate this news",
                        style: TextStyle(
                            fontSize: 10.sp, color: Color(0xff1B1B1B)),
                      ),
                      Spacer(),
                      Icon(Icons.star_border,
                          size: 13, color: Color(0xff8E8E93)),
                      Icon(Icons.star_border,
                          size: 13, color: Color(0xff8E8E93)),
                      Icon(Icons.star_border,
                          size: 13, color: Color(0xff8E8E93)),
                      Icon(Icons.star_border,
                          size: 13, color: Color(0xff8E8E93)),
                      Icon(Icons.star_border,
                          size: 13, color: Color(0xff8E8E93)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25.h,
                  bottom: 19.h,
                ),
                child: Text(
                  "Related",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              color: Color(0xff8E8E93)),
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
