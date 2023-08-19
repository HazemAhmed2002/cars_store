import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/main%20screen/buy%20car/buy_car_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyCarScreen extends StatefulWidget {
  const BuyCarScreen({super.key});

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
    return GetBuilder<BuyCarConrtoller>(
        init: BuyCarConrtoller(),
        builder: (controller) {
          return controller.isLoading
              ? const Center(child: CircularProgressIndicator())
              : 
              Scaffold(
                  backgroundColor: ColorHelper.circleAvatarColor,
                  appBar: AppBar(
                    toolbarHeight: 90,
                    elevation: 0.0,
                    backgroundColor: ColorHelper.circleAvatarColor,
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton(
                          hint: const Text("Select Item"),
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: dropdownValue,
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: ColorHelper.iconColor),
                          elevation: 16,
                          style: TextStyle(color: ColorHelper.iconColor),
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
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    color: ColorHelper.iconColor,
                                    Icons.search,
                                    size: 18.w,
                                  ),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: ColorHelper.iconColor,
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
                              child: Icon(
                                Icons.filter_list_outlined,
                                color: ColorHelper.secondryColor,
                              )),
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
                                          borderRadius:
                                              BorderRadius.circular(25.r)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15)),
                                          color: ColorHelper.secondryColor
                                              .withOpacity(0.20),
                                        ),
                                        width: 46.w,
                                        height: 23.h,
                                        child: Center(
                                          child: Text(
                                            "Offer",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color:
                                                    ColorHelper.secondryColor),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: ColorHelper.iconColor,
                                          )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Image.network(
                                              '${controller.carModel.data![index].image}',
                                              width: 120.w,
                                              height: 150.h,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "${controller.carModel.data![index].name}",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "${controller.carModel.data![index].enginePower}",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: ColorHelper.iconColor),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 15.w, top: 20.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  height: 10.h,
                                                  child: ListView.separated(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      shrinkWrap: true,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              CircleAvatar(
                                                                radius: 6.h,
                                                              ),
                                                      separatorBuilder:
                                                          (context, index) =>
                                                              SizedBox(
                                                                width: 5.w,
                                                              ),
                                                      itemCount: 3),
                                                ),
                                                Text(
                                                  "\$${controller.carModel.data![index].price}",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: ColorHelper
                                                          .secondryColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
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
        });
  }
}
