import 'package:cars_store/view/My%20Order/my_order_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

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
          "My Order",
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff1B1B1B),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "Edit",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xff8E8E93),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: Text(
              "3 items selected",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff1B1B1B),
              ),
            ),
          ),
          SizedBox(
            height: 320.h,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Orion Motor Wheel Spacers",
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                                color: Colors.white),
                                            width: 72.w,
                                            height: 28.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Icon(
                                                  Icons.remove,
                                                  size: 16,
                                                  color: Color(0xff8E8E93),
                                                ),
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: const Color(
                                                          0xff1B1B1B)),
                                                ),
                                                const Icon(
                                                  Icons.add,
                                                  size: 16,
                                                  color: Color(0xff8E8E93),
                                                ),
                                              ],
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(right: 18.w),
                                          child: Text(
                                            "\$21.00",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: const Color(0xff1DB854)),
                                          ),
                                        ),
                                      ],
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
        ]),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 310.h,
        decoration: BoxDecoration(
            color: const Color(0xffF1F2F3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xff1B1B1B)),
                ),
                Text(
                  "\$8.00",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xff1B1B1B)),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff1B1B1B),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$126.00",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff1DB854),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order time",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff1B1B1B),
                  ),
                ),
                Text(
                  "7:15 pm",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff8E8E93),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expected delivery time",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff1B1B1B),
                  ),
                ),
                Text(
                  "18:00 pm",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff8E8E93),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 45.h,
                  color: const Color(0xff1DB854),
                  textColor: Colors.white,
                  child: Text(
                    "Pay now",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      barrierColor: Colors.black.withOpacity(.8),
                      backgroundColor: Colors.white,
                      builder: (BuildContext context) {
                        return const MyOrderSubmitScreen();
                      },
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
