import 'package:cars_store/customWidget/custom_material_button.dart';
import 'package:cars_store/view/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pinput/pinput.dart';

class VerrificationScreen extends StatelessWidget {
  const VerrificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(30.h),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Verrification",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              const Text(
                "we texted you a code to verify\nyour phone number.",
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 68.h),
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  defaultPinTheme: PinTheme(
                    width: 57.h,
                    height: 57.w,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F2F3),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 70.h),
                  child: CustomMaterialButton(
                    onPressed: () {
                      Get.to(const RegisterScreen());
                    },
                  )),
              SizedBox(
                height: 28.h,
              ),
              const Text(
                "Resend in 54 Sec",
                style: TextStyle(
                  color: Color(0xff1DB854),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
