import 'package:cars_store/customWidget/custom_material_button.dart';
import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/modules/image_path.dart';
import 'package:cars_store/services/auth_service.dart';
import 'package:cars_store/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  List<ImagePath> ImageLogin = [
    ImagePath(
      path: "assets/images/search.png",
    ),
    ImagePath(
      path: "assets/images/icon-twitter.png",
    ),
    ImagePath(
      path: "assets/images/icons8-facebook.png",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
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
            child: SingleChildScrollView(
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
                      onChanged: (phone) {},
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
                          color: ColorHelper.iconColor,
                        ),
                      ),
                      Text(
                        " Terms ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorHelper.secondryColor,
                        ),
                      ),
                      Text(
                        "and ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorHelper.iconColor,
                        ),
                      ),
                      Text(
                        "Data Policy.",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorHelper.secondryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 75.h,
                  ),
                  CustomMaterialButton(onPressed: () async {
                    // Get.to( VerrificationScreen());
                    await controller.loginWithPhone(controller.phoneNumber);
                    print("Done");
                  }),
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    "Login with",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorHelper.iconColor,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => CircleAvatar(
                              backgroundColor: ColorHelper.circleAvatarColor,
                              radius: 0.1.sh / 3,
                              child: InkWell(
                                onTap: () async {
                                  if (index == 0) {
                                    await controller.signInWithGoogle();
                                    Get.off(MainScreen());
                                    print("Done");
                                  }
                                },
                                child: Image.asset(
                                  "${ImageLogin[index].path}",
                                  height: 25.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                        itemCount: ImageLogin.length),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
