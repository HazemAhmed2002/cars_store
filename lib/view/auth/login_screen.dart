import 'package:cars_store/view/auth/verrification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.close,
          size: 30.h,
        ),
      )),
      body: Padding(
        padding: EdgeInsets.all(30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: IntlPhoneField(
                showCountryFlag: false,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            SizedBox(
              height: 61.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.done),
                ),
                Text(
                  "Agree to our",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff8E8E93),
                  ),
                ),
                Text(
                  " Terms ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff1DB854),
                  ),
                ),
                Text(
                  "and ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff8E8E93),
                  ),
                ),
                Text(
                  "Data Policy.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff1DB854),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75.h,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(25.sp),
              )),
              onPressed: () {
                Get.to(VerrificationScreen());
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
            SizedBox(
              height: 100.h,
            ),
            Text(
              "Login with",
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xff8E8E93),
              ),
            ),
            SizedBox(
              height: 100.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CircleAvatar(
                        backgroundColor: Color(0xffF1F2F3),
                        radius: 0.1.sh / 3,
                        child: Image.asset(
                          "assets/images/search.png",
                          height: 25.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10.w,
                      ),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
