import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ShowBrandScreen extends StatelessWidget {
  ShowBrandScreen({super.key});
  List<String> dataList = [
    'All',
    'Sedan',
    'SUV',
    'Luxury',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        toolbarHeight: 80.h,
        title: Text(
          "Porsche",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 14.sp,
                color: const Color(0xff1B1B1B),
              ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            color: const Color(0xff8E8E93),
            size: 30.h,
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hot",
              style: TextStyle(
                fontSize: 20.sp,
                color: const Color(0xff1B1B1B),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 27.h),
              child: SizedBox(
                height: 180.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          width: 150.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                      color: Color(0xff8E8E93),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/images/car_2.png',
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
            SizedBox(
              height: 20.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Text(
                    dataList[index],
                    style: TextStyle(
                        fontSize: 14.sp, color: const Color(0xff8E8E93)),
                  ),
                ),
                itemCount: dataList.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 15.w,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        width: 335.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                                child: Image.asset(
                                  'assets/images/car_2.png',
                                  width: 120,
                                  height: 80,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Acura CDX",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Honda/Hatchback/\$26,670",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xff8E8E93)),
                                  ),
                                  Text(
                                    "\$500,000",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff1DB854)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}
