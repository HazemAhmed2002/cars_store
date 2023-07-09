import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../customWidget/custom_assets_image.dart';
import '../customWidget/custom_button.dart';
import '../customWidget/custom_icon.dart';
import '../customWidget/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIcon(
          iconData: Icons.close,
          size: 30.h,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 100.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 100.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  InternationalPhoneNumberInput(
                    textStyle:
                        TextStyle(fontSize: 16.sp), // Change the text size here
                    onInputChanged: (value) {},
                    inputBorder: InputBorder.none,
                    selectorConfig: const SelectorConfig(
                      setSelectorButtonAsPrefixIcon: true,
                      // Change the text size here

                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      showFlags: false, // Remove city flag

                      // Additional configuration properties
                    ),
                    inputDecoration: InputDecoration(
                      border: InputBorder.none,

                      hintText: "Enter the phone Number",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.black,
                            ),
                            height: 20.h,
                            child: CustomIcon(
                              iconData: Icons.close,
                              color: Colors.black,
                              size: 20.h,
                            )),
                      ), // Change the icon here
                      // Additional decoration properties
                    ),
                  ),
                  CustomButton(
                    padding: 5.w,
                    height: 1.h,
                    width: double.infinity,
                    color: Colors.black,
                    borderRadius: 30.r,
                  ),
                  Positioned(
                      top: 8,
                      left: 60,
                      bottom: 10,
                      child: CustomButton(
                        padding: 1.w,
                        height: 40.h,
                        width: 1,
                        color: Colors.black,
                        borderRadius: 30.r,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w),
              child: Row(
                children: [
                  AssetsImage(
                    text: "assets/images/select.png",
                    height: 20.h,
                    width: 20.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    text: "Agree to our",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  CustomText(
                    text: "Terms",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black),
                  ),
                  CustomText(
                      text: "and",
                      style: Theme.of(context).textTheme.bodyText1),
                  CustomText(
                      text: "Data Policy.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: Colors.black)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: CustomButton(
                padding: 20.w,
                height: 50.h,
                width: double.infinity,
                color: Colors.black,
                borderRadius: 30.r,
                text: "Continue",
                colorText: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  padding: 5.w,
                  height: 1.h,
                  width: 60.w,
                  color: Colors.black,
                  borderRadius: 30.r,
                ),
                CustomText(
                  text: "Login",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                CustomButton(
                  padding: 5.w,
                  height: 1.h,
                  width: 60.w,
                  color: Colors.black,
                  borderRadius: 30.r,
                ),
              ],
            ),
            SizedBox(
                height: 100.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CircleAvatar(
                          radius: 0.1.sh / 3,
                          backgroundColor: Colors.black,
                          child: AssetsImage(
                            text:
                                "${controller.communicationMechanism[index].image}",
                            height: 25.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10.w,
                        ),
                    itemCount: controller.communicationMechanism.length))
          ],
        ),
      ),
    );
  }
}
