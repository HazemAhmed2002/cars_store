import 'package:cars_store/cars/custom_list_textform/custom_textForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetOffersScreen extends StatelessWidget {
  const GetOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Spacer(),
                  Text("Get Offers from Dealer",
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff8E8E93))),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 25,
                        color: Color(0xffAAB6C3),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                children: [
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/car360.png',
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Porsche 718",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff1B1B1B)),
                      ),
                      Text(
                        "Porsche/Luxury/The 2.3L EcoBoost",
                        style: TextStyle(
                            fontSize: 10.sp, color: const Color(0xff8E8E93)),
                      ),
                      Text(
                        "\$62,000.00-\$74,000.00",
                        style: TextStyle(
                            fontSize: 14.sp, color: const Color(0xff1DB854)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomListTextForm(),
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
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
                    "Submit",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
