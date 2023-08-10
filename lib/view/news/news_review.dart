import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewNewsScreen extends StatelessWidget {
  ReviewNewsScreen({super.key});
  List<String> dataList = [
    'Hot',
    'Latest',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 800.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: SizedBox(
                height: 20.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: Text(
                      dataList[index],
                      style: TextStyle(
                          fontSize: 14.sp, color: ColorHelper.iconColor),
                    ),
                  ),
                  itemCount: dataList.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15.w,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.separated(
                    itemBuilder: (context, index) => SizedBox(
                          height: 110.h,
                          // decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(15.r),
                          //     border:
                          //         Border.all(color:  ColorHelper.circleAvatarColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    color:
                                                        ColorHelper.iconColor,
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
                                                  color: ColorHelper
                                                      .secondryColorText),
                                              "Porsche actually wanted to name this something else, but that name was already taycan"),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 40.w),
                                          child: Text(
                                            "17 Reply",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color:
                                                    ColorHelper.secondryColor),
                                          ),
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
            ),
            Container(
              height: 83.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: ColorHelper.circleAvatarColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 220.w,
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
                  InkWell(
                    onTap: () {
                      // showModalBottomSheet<void>(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return ReviewNewsScreen();
                      //   },
                      // );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 17,
                          color: ColorHelper.iconColor,
                        ),
                        Text(
                          "83",
                          style: TextStyle(fontSize: 10.sp),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 18,
                        color: ColorHelper.iconColor,
                      ),
                      Text(
                        "99",
                        style: TextStyle(fontSize: 10.sp),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 18,
                        color: ColorHelper.iconColor,
                      ),
                      Text(
                        "collect",
                        style: TextStyle(fontSize: 10.sp),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
