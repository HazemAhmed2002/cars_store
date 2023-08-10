import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  List<String> dataList = [
    'Sales',
    'Hot',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.circleAvatarColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.circleAvatarColor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(25.r)),
          height: 30.h,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIconColor: ColorHelper.iconColor,
              suffixIconColor: ColorHelper.iconColor,
              prefixIcon: const Icon(
                Icons.search,
                size: 20,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 14,
                color: ColorHelper.iconColor,
              ),
              suffixIcon: const Icon(
                Icons.mic,
                size: 17,
              ),
              isCollapsed: true,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "History",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: ColorHelper.iconColor,
                      ),
                      Text(
                        "Clear History",
                        style: TextStyle(
                            color: ColorHelper.iconColor, fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 26.h, bottom: 49.h),
              child: SizedBox(
                height: 34.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: Container(
                      height: 34.h,
                      width: 103.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: const Center(child: Text("3 Series Gt")),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
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
                Row(
                  children: [
                    Text(
                      "Dec, 2020",
                      style: TextStyle(color: ColorHelper.iconColor),
                    ),
                    Icon(Icons.arrow_drop_down, color: ColorHelper.iconColor),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        width: 335.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("${index + 1}."),
                              Padding(
                                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                                child: Image.asset(
                                  'assets/images/car_1.png',
                                  width: 72,
                                  height: 48,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Acura CDX",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Honda/Hatchback/\$26,670",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: ColorHelper.iconColor),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "3853",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: ColorHelper.secondryColor),
                                    ),
                                    Text(
                                      "Sell",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: ColorHelper.iconColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}
