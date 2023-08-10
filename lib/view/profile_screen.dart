import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.circleAvatarColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.circleAvatarColor,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorHelper.iconColor,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.r)),
              child: IconButton(
                  onPressed: () {},
                  iconSize: 14.w,
                  icon: Icon(
                    Icons.wechat,
                    color: ColorHelper.iconColor,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.r)),
              child: IconButton(
                  iconSize: 14.w,
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: ColorHelper.iconColor,
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundImage: const NetworkImage(
                      "https://images.pexels.com/photos/1484806/pexels-photo-1484806.jpeg?auto=compress&cs=tinysrgb&w=800"),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sebastian",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "BMW 3 Series/7 Series owner",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorHelper.iconColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 64.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorHelper.secondryColor,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "+ Follow",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: ColorHelper.secondryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "47",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorHelper.iconColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8673",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Follower",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorHelper.iconColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "67",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorHelper.iconColor),
                      ),
                    ],
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(
                          Icons.widgets_outlined,
                          color: ColorHelper.iconColor,
                        ),
                        Text(
                          " Common Functions",
                          style: TextStyle(
                              color: ColorHelper.iconColor, fontSize: 12.sp),
                        )
                      ]),
                      SizedBox(
                        height: 14.h,
                      ),
                      Center(
                        child: SizedBox(
                          height: 80.h,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                              width: 80.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: ColorHelper.circleAvatarColor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.text_snippet,
                                    color: Color(0xffFB931A),
                                  ),
                                  Text(
                                    "My order",
                                    style: TextStyle(fontSize: 12.sp),
                                  )
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                            itemCount: 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(children: [
                        Icon(
                          Icons.time_to_leave_outlined,
                          color: ColorHelper.iconColor,
                        ),
                        Text(
                          " My cars",
                          style: TextStyle(
                              color: ColorHelper.iconColor, fontSize: 12.sp),
                        )
                      ]),
                      SizedBox(
                        height: 13.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Owned/Driven",
                              style: TextStyle(fontSize: 14.sp)),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: ColorHelper.iconColor,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 24.h),
                        child: Container(
                            width: double.infinity,
                            height: 1.h,
                            color: ColorHelper.iconColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Like List", style: TextStyle(fontSize: 14.sp)),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: ColorHelper.iconColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(children: [
                        Icon(
                          Icons.list_alt,
                          color: ColorHelper.iconColor,
                        ),
                        Text(
                          " Others",
                          style: TextStyle(
                              color: ColorHelper.iconColor, fontSize: 12.sp),
                        )
                      ]),
                      SizedBox(
                        height: 13.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Feedback", style: TextStyle(fontSize: 14.sp)),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: ColorHelper.iconColor,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 19.h, bottom: 15.h),
                        child: Container(
                            width: double.infinity,
                            height: 1.h,
                            color: ColorHelper.iconColor),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: ColorHelper.secondryColor,
                            fontSize: 14.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
