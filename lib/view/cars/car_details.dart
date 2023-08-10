import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/cars/tabBar/faq_tabbar.dart';
import 'package:cars_store/view/cars/tabBar/price_tabbar.dart';
import 'package:cars_store/view/video/video_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsDetalisScreen extends StatefulWidget {
  const CarsDetalisScreen({super.key});

  @override
  State<CarsDetalisScreen> createState() => _CarsDetalisScreenState();
}

class _CarsDetalisScreenState extends State<CarsDetalisScreen> {
  String? dropdownValue;

  final List<String> list = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  List<String> dataList = [
    'Price',
    'Reviews',
    'FAQ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: ColorHelper.iconColor,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DropdownButton(
              hint: const Text("Select Item"),
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              underline: const SizedBox(),
              value: dropdownValue,
              icon:
                  Icon(Icons.keyboard_arrow_down, color: ColorHelper.iconColor),
              elevation: 16,
              style: TextStyle(color: ColorHelper.iconColor),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Icon(
                Icons.favorite_border,
                color: ColorHelper.iconColor,
              ),
            ),
            Icon(
              Icons.share,
              color: ColorHelper.iconColor,
            ),
          ],
        ),
      ),
      body: Column(children: [
        Center(
          child: Image.asset(
            'assets/images/car360.png',
            width: 300.w,
            height: 200.h,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 40.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                  width: 50.h,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/car3.png")),
                      color: ColorHelper.circleAvatarColor,
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: ColorHelper.circleAvatarColor)),
                  child: Center(
                    child: Text(
                      "+200 \nImages",
                      style: TextStyle(color: Colors.white, fontSize: 9.sp),
                    ),
                  )),
              separatorBuilder: (context, index) => SizedBox(
                    width: 15.w,
                  ),
              itemCount: 4),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: ColorHelper.circleAvatarColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r))),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Porsche 718",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              "Compare",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: ColorHelper.iconColor),
                            ),
                            Checkbox(
                              activeColor: ColorHelper.iconColor,
                              side: BorderSide(
                                  color: ColorHelper.iconColor,
                                  style: BorderStyle.solid,
                                  strokeAlign: -5.h),
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "\$62,000.00-\$74,000.00",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorHelper.secondryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 30,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(children: [
                      RatingBar.builder(
                        initialRating: 3,
                        unratedColor: ColorHelper.iconColor,
                        updateOnDrag: true,
                        glowColor: ColorHelper.secondryColor,
                        glowRadius: 0.0,
                        minRating: 1,
                        itemSize: 15.h,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        onRatingUpdate: (rating) {},
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: ColorHelper.secondryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "268 review",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorHelper.iconColor),
                      ),
                      const Spacer(),
                      Text("Rate This car",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorHelper.secondryColor)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Key Specs",
                            style: TextStyle(
                                fontSize: 14.sp, color: ColorHelper.iconColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "All Specs",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: ColorHelper.secondryColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12.w,
                                color: ColorHelper.secondryColor,
                              )
                            ],
                          )
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      bottom: 20.h,
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(25.r)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      bottom: 10.w,
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(
                                            Icons.settings_suggest_outlined,
                                            size: 40,
                                          ),
                                          Text(
                                            "360 N·m",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: ColorHelper
                                                    .secondryColorText),
                                          ),
                                          Text(
                                            "Engine Power",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: ColorHelper.iconColor),
                                          ),
                                        ]),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 20.w,
                                ),
                            itemCount: 3),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r))),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: DefaultTabController(
                        length: 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TabBar(
                                isScrollable: true,
                                labelColor: ColorHelper.secondryColor,
                                labelStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                                unselectedLabelColor: ColorHelper.iconColor,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: ColorHelper.secondryColor,
                                tabs: const [
                                  Tab(text: 'Price'),
                                  Tab(text: 'Reviews'),
                                  Tab(text: 'FAQ'),
                                ],
                              ),
                              const Expanded(
                                child: TabBarView(children: [
                                  PriceTabBar(),
                                  Center(child: Text("Sedan")),
                                  FAQTabBar(),
                                ]),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
          child: MaterialButton(
            minWidth: double.infinity,
            height: 45.h,
            color: ColorHelper.secondryColor,
            textColor: Colors.white,
            child: Text(
              "Get Offers from Dealer",
              style: TextStyle(fontSize: 14.sp),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                backgroundColor: Colors.white,
                builder: (BuildContext context) {
                  return ReviewVideoScreen();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
