import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextForm(
                labelText: "Full name",
                suffixIcon: Icons.close,
                obscureText: false,
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextForm(
                      labelText: "E-mail",
                      suffixIcon: Icons.close,
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: Text(
                        "Don't miss our latest promotions and updates",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff8E8E93),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: CustomTextForm(
                  labelText: "password",
                  suffixIcon: Icons.close,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: CustomTextForm(
                  labelText: "Confirm password",
                  suffixIcon: Icons.visibility,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(25.sp),
                  )),
                  onPressed: () {
                    // Get.to(VerrificationScreen());
                  },
                  color: const Color(0xff1DB854),
                  textColor: Colors.white,
                  minWidth: 315.w,
                  height: 50.h,
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextForm extends StatelessWidget {
  CustomTextForm({
    super.key,
    required this.labelText,
    required this.suffixIcon,
    required this.obscureText,
  });
  final String labelText;
  final IconData suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          suffix: IconButton(
              iconSize: 18.h,
              onPressed: () {},
              icon: Icon(
                suffixIcon,
              ))),
    );
  }
}
