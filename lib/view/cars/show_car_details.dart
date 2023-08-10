import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/cars/get_offers.dart';
import 'package:cars_store/view/cars/tabBar/photos_tabbar.dart';
import 'package:cars_store/view/cars/tabBar/videos_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowCarDetailsScreen extends StatefulWidget {
  const ShowCarDetailsScreen({super.key});

  @override
  State<ShowCarDetailsScreen> createState() => _ShowCarDetailsScreenState();
}

class _ShowCarDetailsScreenState extends State<ShowCarDetailsScreen> {
  String? dropdownValue;
  final List<String> list = [
    '2020 Cayman T',
    'Item2',
    'Item3',
    'Item4',
  ];

  List<int> myColors = [
    0Xfff00AC5E,
    0XfffF6C604,
    0XfffFF3131,
    0Xfff424243,
    0Xfff006DEA
  ];
  int indexChoices = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.circleAvatarColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorHelper.circleAvatarColor,
        leading: Align(
          child: IconButton(
            onPressed: () {},
            iconSize: 30.h,
            icon: Icon(
              Icons.arrow_back,
              color: ColorHelper.iconColor,
            ),
          ),
        ),
        title: DropdownButton(
          underline: const SizedBox(),
          hint: Text(list.first.toString()),
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          value: dropdownValue,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: ColorHelper.iconColor,
          ),
          style: TextStyle(color: ColorHelper.iconColor),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Icon(
              Icons.share,
              size: 17.w,
              color: ColorHelper.iconColor,
            ),
          ),
        ],
      ),
      body: Column(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/car360.png',
                width: 300.w,
                height: 200.h,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 50.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CircleAvatar(
                          radius: 8.h,
                          backgroundColor: Color(myColors[index]),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15.w,
                        ),
                    itemCount: myColors.length),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: DefaultTabController(
                length: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: ColorHelper.secondryColor,
                        labelStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                        unselectedLabelColor: ColorHelper.iconColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: ColorHelper.secondryColor,
                        tabs: const [
                          Tab(text: 'Photos'),
                          Tab(text: 'Videos'),
                        ],
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            PhotosTabBar(),
                            VideosTabBar(),
                          ],
                        ),
                      )
                    ]),
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
                  return const GetOffersScreen();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
