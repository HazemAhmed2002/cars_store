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
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xff8E8E93)),
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close, color: Color(0xff8E8E93)))
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
                                              color: const Color(0xff8E8E93),
                                            )),
                                      ),
                                      Text(
                                        "3 hours ago",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: const Color(0xffC7C7CC)),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "78 ",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff8E8E93)),
                                      ),
                                      const Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 12,
                                        color: Color(0xff8E8E93),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.w),
                                    child: Text(
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff1B1B1B)),
                                        "Porsche actually wanted to name this something else, but that name was already taycan"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.w),
                                    child: Text(
                                      "17 Reply",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: const Color(0xff1DB854)),
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
              color: const Color(0xffF1F2F3),
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
