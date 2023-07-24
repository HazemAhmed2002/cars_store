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
              child: Container(
                height: 20.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: Text(
                      dataList[index],
                      style: TextStyle(
                          fontSize: 14.sp, color: const Color(0xff8E8E93)),
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
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                          height: 100.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r),
                              border:
                                  Border.all(color: const Color(0xffF1F2F3))),
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
                                                        const Color(0xff8E8E93),
                                                  )),
                                            ),
                                            Text(
                                              "3 hours ago",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color:
                                                      const Color(0xffC7C7CC)),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "78 ",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff8E8E93)),
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
                                                  color: Color(0xff1B1B1B)),
                                              "Porsche actually wanted to name this something else, but that name was already taycan"),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 40.w),
                                          child: Text(
                                            "17 Reply",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color(0xff1DB854)),
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
            )
          ],
        ),
      ),
    );
  }
}
