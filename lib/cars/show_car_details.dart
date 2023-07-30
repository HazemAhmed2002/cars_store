import 'package:cars_store/cars/tabBar/photos_tabbar.dart';
import 'package:cars_store/cars/tabBar/videos_tabbar.dart';
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
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF1F2F3),
        leading: Align(
          child: IconButton(
            onPressed: () {},
            iconSize: 30.h,
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff8E8E93),
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
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff8E8E93),
          ),
          style: const TextStyle(color: Color(0xff8E8E93)),
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
              color: const Color(0xff8E8E93),
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
                        labelColor: const Color(0xff1DB854),
                        labelStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                        unselectedLabelColor: const Color(0xff8E8E93),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: const Color(0xff1DB854),
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
            color: const Color(0xff1DB854),
            textColor: Colors.white,
            child: Text(
              "Get Offers from Dealer",
              style: TextStyle(fontSize: 14.sp),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
