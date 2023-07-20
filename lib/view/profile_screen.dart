import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff8E8E93),
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
                  icon: const Icon(
                    Icons.wechat,
                    color: Color(0xff8E8E93),
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
                  icon: const Icon(
                    Icons.settings,
                    color: Color(0xff8E8E93),
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
                          color: const Color(0xff8E8E93)),
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
                            color: const Color(0xff1DB854),
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "+ Follow",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xff1DB854),
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
                            fontSize: 12.sp, color: const Color(0xff8E8E93)),
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
                            fontSize: 12.sp, color: const Color(0xff8E8E93)),
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
                            fontSize: 12.sp, color: const Color(0xff8E8E93)),
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
                        const Icon(
                          Icons.widgets_outlined,
                          color: Color(0xff8E8E93),
                        ),
                        Text(
                          " Common Functions",
                          style: TextStyle(
                              color: const Color(0xff8E8E93), fontSize: 12.sp),
                        )
                      ]),
                      SizedBox(
                        height: 14.h,
                      ),
                      Center(
                        child: Container(
                          height: 80.h,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                              width: 80.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color(0xffF1F2F3)),
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
                        const Icon(
                          Icons.time_to_leave_outlined,
                          color: Color(0xff8E8E93),
                        ),
                        Text(
                          " My cars",
                          style: TextStyle(
                              color: const Color(0xff8E8E93), fontSize: 12.sp),
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
                          const Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff8E8E93),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 24.h),
                        child: Container(
                            width: double.infinity,
                            height: 1.h,
                            color: const Color(0xff8E8E93)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Like List", style: TextStyle(fontSize: 14.sp)),
                          const Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff8E8E93),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(children: [
                        const Icon(
                          Icons.list_alt,
                          color: Color(0xff8E8E93),
                        ),
                        Text(
                          " Others",
                          style: TextStyle(
                              color: const Color(0xff8E8E93), fontSize: 12.sp),
                        )
                      ]),
                      SizedBox(
                        height: 13.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Feedback", style: TextStyle(fontSize: 14.sp)),
                          const Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff8E8E93),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 19.h, bottom: 15.h),
                        child: Container(
                            width: double.infinity,
                            height: 1.h,
                            color: const Color(0xff8E8E93)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              color: const Color(0xff1DB854), fontSize: 14.sp),
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
