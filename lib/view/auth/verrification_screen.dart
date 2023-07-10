import 'package:cars_store/customWidget/custom_material_button.dart';
import 'package:cars_store/view/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(15),
                    fieldHeight: 57.h,
                    fieldWidth: 57.w,
                    activeFillColor: Colors.black,
                    inactiveColor: Colors.grey,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: CustomMaterialButton(onPressed: () {
                  Get.to(RegisterScreen());
                }),
              ),
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
