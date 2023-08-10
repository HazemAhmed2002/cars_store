import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQTabBar extends StatelessWidget {
  const FAQTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                color: ColorHelper.circleAvatarColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              width: double.infinity,
              height: 70.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/qa.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Have any question?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: ColorHelper.secondryColorText),
                        ),
                        Text(
                          "Click the button",
                          style: TextStyle(
                              fontSize: 12.sp, color: ColorHelper.iconColor),
                        ),
                      ],
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r)),
                      child: MaterialButton(
                        minWidth: 70,
                        height: 30,
                        color: ColorHelper.secondryColor,
                        onPressed: () {},
                        child: const Text("Ask Now"),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Wrap(
              children: List.generate(
                  3,
                  (index) => Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: ColorHelper.circleAvatarColor),
                            width: double.infinity,
                            height: 157.h,
                            child: Padding(
                              padding: EdgeInsets.all(15.w),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Icon(
                                      color: Colors.orange,
                                      Icons.question_mark,
                                      size: 15.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        maxLines: 1,
                                        "How much price we have to pay for buying Porsche 718 Boxter?",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                ColorHelper.secondryColorText),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        color: Colors.green,
                                        Icons.question_mark,
                                        size: 15.w,
                                      ),
                                      Expanded(
                                        child: Text(
                                          maxLines: 2,
                                          "For this, we would suggest you walk into the nearest dealership as they will be the better person to assist you.",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: ColorHelper
                                                  .secondryColorText),
                                        ),
                                      )
                                    ]),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20.h,
                                    bottom: 10.h,
                                    left: 20.w,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1.h,
                                    color: const Color(0xffD1D1D6),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.thumb_up_alt_outlined,
                                            size: 14,
                                            color: ColorHelper.secondryColor),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Helpful (6)",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: ColorHelper.secondryColor),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "10 Answers",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: ColorHelper.secondryColor),
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                            size: 11,
                                            color: ColorHelper.secondryColor)
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
