import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ReviewVideoScreen extends StatelessWidget {
  const ReviewVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reviews",
                  style:
                      TextStyle(fontSize: 14.sp, color: ColorHelper.iconColor),
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close, color: ColorHelper.iconColor))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ListView.separated(
                  itemCount: 4,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemBuilder: (context, index) => SizedBox(
                    height: 110.h,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15.r,
                                        backgroundImage: const NetworkImage(
                                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.w, right: 8.w),
                                        child: Text("Uzair Arshad",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: ColorHelper.iconColor,
                                            )),
                                      ),
                                      Text(
                                        "3 hours ago",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: ColorHelper.textColor),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "78 ",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: ColorHelper.iconColor),
                                      ),
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 12,
                                        color: ColorHelper.iconColor,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.w),
                                    child: Text(
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                ColorHelper.secondryColorText),
                                        "Porsche actually wanted to name this something else, but that name was already taycan"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.w),
                                    child: Text(
                                      "17 Reply",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: ColorHelper.secondryColor),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 83.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: ColorHelper.circleAvatarColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Say something…",
                        labelStyle: const TextStyle(fontSize: 8),
                        prefixIcon: Icon(
                          Icons.border_color_outlined,
                          size: 17.w,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
