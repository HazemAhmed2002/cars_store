import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceTabBar extends StatelessWidget {
  const PriceTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.spaceBetween,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: const UnderlineTabIndicator(
                      borderSide: BorderSide(color: Color(0xffD1D1D6))),
                  width: double.infinity,
                  height: 70.h,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cayman",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$62,000.00",
                          style: TextStyle(
                              fontSize: 14.sp, color: const Color(0xff1DB854)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1988 cc, Automatic,petrol,9.0 kmpl",
                          style: TextStyle(
                              fontSize: 10.sp, color: const Color(0xff8E8E93)),
                        ),
                        Row(
                          children: [
                            Text(
                              "Compare",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff8E8E93)),
                            ),
                            Checkbox(
                              activeColor: const Color(0xff8E8E93),
                              side: BorderSide(
                                  color: const Color(0xff8E8E93),
                                  style: BorderStyle.solid,
                                  strokeAlign: -5.h),
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            )),
        SizedBox(
          height: 15.h,
        ),
        const Text("Recommend for you"),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.spaceBetween,
          spacing: 20.w,
          children: List.generate(
              5,
              (index) => Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 78.w,
                      width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/car_2.png',
                              height: 60.h,
                              width: 90.w,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              "BMW 6 Series GT",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff1B1B1B)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
        ),
      ]),
    );
  }
}
