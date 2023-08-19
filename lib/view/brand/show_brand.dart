import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/brand/show_brand_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ShowBrandScreen extends StatefulWidget {
  const ShowBrandScreen({
    super.key,
    required this.id,
    required this.name,
  });
  final int id;
  final String name;

  @override
  State<ShowBrandScreen> createState() => _ShowBrandScreenState();
}

class _ShowBrandScreenState extends State<ShowBrandScreen> {
  List<String> dataList = [
    'All',
    'Sedan',
    'SUV',
    'Luxury',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShowBrandConrtoller>(
        init: ShowBrandConrtoller(),
        builder: (controller) {
          return controller.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Scaffold(
                  backgroundColor: ColorHelper.circleAvatarColor,
                  appBar: AppBar(
                    backgroundColor: ColorHelper.circleAvatarColor,
                    toolbarHeight: 80.h,
                    title: Text(
                      widget.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 14.sp,
                            color: ColorHelper.secondryColorText,
                          ),
                    ),
                    leading: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        color: ColorHelper.iconColor,
                        size: 30.h,
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hot",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: ColorHelper.secondryColorText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 27.h),
                          child: SizedBox(
                            height: 180.h,
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.favorite_border,
                                                  size: 20,
                                                  color: ColorHelper.iconColor,
                                                ),
                                              ],
                                            ),
                                            Image.network(
                                              '${controller.carModel.data![index].image}',
                                              fit: BoxFit.contain,
                                            ),
                                            Text(
                                              "${controller.carModel.data![index].name}",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold),
                                              maxLines: 1,
                                            ),
                                            Text(
                                              "\$${controller.carModel.data![index].price}",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: ColorHelper
                                                      .secondryColor),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 15.w,
                                    ),
                                itemCount: controller.carModel.data!.length),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {},
                              child: Text(
                                dataList[index],
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: ColorHelper.iconColor),
                              ),
                            ),
                            itemCount: dataList.length,
                            separatorBuilder: (context, index) => SizedBox(
                              width: 15.w,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              itemBuilder: (context, index) => Container(
                                    width: 335.w,
                                    height: 90.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.w, right: 8.w),
                                            child: Image.network(
                                              '${controller.carModel.data![index].image}',
                                              width: 120,
                                              height: 80,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Acura CDX",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "${controller.carModel.data![index].name}",
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color:
                                                        ColorHelper.iconColor),
                                              ),
                                              Text(
                                                "\$${controller.carModel.data![index].price}",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: ColorHelper
                                                        .secondryColor),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 15.h,
                                  ),
                              itemCount: controller.carModel.data!.length),
                        )
                      ],
                    ),
                  ),
                );
        });
  }
}
