import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyCarScreen extends StatefulWidget {
  BuyCarScreen({super.key});

  @override
  State<BuyCarScreen> createState() => _BuyCarScreenState();
}

class _BuyCarScreenState extends State<BuyCarScreen> {
  String? dropdownValue;
  final List<String> list = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0.0,
        backgroundColor: const Color(0xffF1F2F3),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton(
              hint: const Text("Select Item"),
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down,
                  color: Color(0xff8E8E93)),
              elevation: 16,
              style: const TextStyle(color: Color(0xff8E8E93)),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                height: 35.h,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        color: const Color(0xff8E8E93),
                        Icons.search,
                        size: 18.w,
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff8E8E93),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.filter_list_outlined)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: 35.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(25.r)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/4.png",
                                  height: 25.h,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Sales",
                                  style: TextStyle(fontSize: 14.sp),
                                )
                              ]),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10.w,
                        ),
                    itemCount: 5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 30.h),
              child: const Text(
                "Top deal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8),
              itemCount: 10,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                              color: const Color(0xff1DB854).withOpacity(0.20),
                            ),
                            width: 46.w,
                            height: 23.h,
                            child: Center(
                              child: Text(
                                "Offer",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Color(0xff1DB854)),
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Color(0xff8E8E93),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/car_2.png',
                                  width: 120.w,
                                  height: 150.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Text(
                              "Audi TT RS",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Audi/2.0-liter four-cylinder",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Color(0xff8E8E93)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(right: 15.w, top: 20.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) =>
                                              CircleAvatar(
                                                radius: 6.h,
                                              ),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                          itemCount: 3),
                                    ),
                                    Text(
                                      "\$67,600",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xff1DB854)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
