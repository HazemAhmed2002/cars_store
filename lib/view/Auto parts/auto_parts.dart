import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AutoPartsScreen extends StatelessWidget {
  const AutoPartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff8E8E93),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Auto parts",
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff1B1B1B),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: const Color(0xffF1F2F3),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 16.w,
                    color: const Color(0xff1DB854),
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF1F2F3),
                  border: Border.all(
                    color: const Color(0xffF1F2F3),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              height: 35.h,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      color: const Color(0xff8E8E93),
                      Icons.search,
                      size: 18.w,
                    ),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff8E8E93),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: double.infinity,
                height: 80.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffF1F2F3),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              width: 54.w,
                              height: 54.h,
                              child: Image.asset('assets/images/category.png'),
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff1B1B1B)),
                            )
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 33.w,
                        ),
                    itemCount: 4),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "For you",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "More >",
                    style: TextStyle(fontSize: 12, color: Color(0xff1DB854)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              height: 225.h,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 15.w,
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Container(
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F2F3),
                        border: Border.all(color: const Color(0xffF1F2F3)),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Color(0xff8E8E93),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Image.asset(
                            width: 120.w,
                            height: 80,
                            'assets/images/car_1.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            "Child-Seat-Cover",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff1B1B1B)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 8.h),
                          child: Text(
                            maxLines: 2,
                            "Easy to keep car organized and clean",
                            style: TextStyle(
                                color: const Color(0xff8E8E93),
                                fontSize: 10.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$10.00",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff1DB854)),
                              ),
                              Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.r),
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.add,
                                    color: const Color(0xff1DB854),
                                    size: 14.w,
                                  )),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "More >",
                    style: TextStyle(fontSize: 12, color: Color(0xff1DB854)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 187.h,
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        height: 86.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffF1F2F3),
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: const Color(0xffF1F2F3))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/chare.png',
                                height: 66.h,
                                width: 66.w,
                                fit: BoxFit.fitHeight,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Orion Motor Wheel Spacers",
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "lightweight compared to steel spacer",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: const Color(0xff8E8E93)),
                                      ),
                                      Text(
                                        "\$21.00",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: const Color(0xff1DB854)),
                                      ),
                                    ]),
                              ),
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
    );
  }
}
