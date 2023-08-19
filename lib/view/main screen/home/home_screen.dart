import 'package:carousel_slider/carousel_slider.dart';
import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/main%20screen/home/home_controller.dart';
import 'package:cars_store/view/brand/brand_details_screen.dart';
import 'package:cars_store/view/news/news_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../customWidget/custom_card.dart';
import '../../../customWidget/custom_card_brand.dart';
import '../../../customWidget/custom_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// final HomeController homeController = Get.find();

class _HomeScreenState extends State<HomeScreen> {
  String? dropdownValue;
  final List<String> list = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeConrtoller>(
        init: HomeConrtoller(),
        builder: (controller) {
          return controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorHelper.secondryColor,
                  ),
                )
              : Scaffold(
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
                              child: const Icon(Icons.message_outlined)),
                        )
                      ],
                    ),
                  ),
                  backgroundColor: ColorHelper.circleAvatarColor,
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: controller.homeModel.data!.sliders
                              ?.map(
                                (item) => Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.network(
                                      "${item.image}",
                                      fit: BoxFit.fill,
                                      width: 340.w,
                                      height: 168.h,
                                    ),
                                    Positioned(
                                        left: 20.w,
                                        bottom: 30.h,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("${item.title}",
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffA4AEAE),
                                                )),
                                            const Text(
                                                "First test! 100km/h extreme bump test",
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        )),
                                    Positioned(
                                      bottom: 23.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: controller
                                            .homeModel.data!.sliders!
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return GestureDetector(
                                            onTap: () => carouselController
                                                .animateToPage(entry.key),
                                            child: Container(
                                              width: currentIndex == entry.key
                                                  ? 8.w
                                                  : 5.w,
                                              height: 5.h,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 1.h,
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color:
                                                      currentIndex == entry.key
                                                          ? ColorHelper
                                                              .secondryColor
                                                          : const Color(
                                                              0xff2A3034)),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30.w, top: 20.h, right: 30.w),
                          child: SizedBox(
                            height: 35.h,
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            "${controller.homeModel.data!.brands![index].logo}",
                                            height: 20.h,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            controller.homeModel.data!
                                                .brands![index].name
                                                .toString(),
                                            style:
                                                const TextStyle(fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 10.w,
                                    ),
                                itemCount:
                                    controller.homeModel.data!.brands!.length),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Top deal",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "More >",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorHelper.secondryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 10,
                          ),
                          child: SizedBox(
                            height: 225.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                width: 15.w,
                              ),
                              itemCount:
                                  controller.homeModel.data!.cars!.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  customCard(index: index),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Popular brands",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const BrandDetailsScreen());
                                },
                                child: Text(
                                  "More >",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorHelper.secondryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 10,
                          ),
                          child: SizedBox(
                            height: 102.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                width: 15.w,
                              ),
                              itemCount:
                                  controller.homeModel.data!.brands!.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  customCardBrand(index: index),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Upcoming",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "More >",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorHelper.secondryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 10,
                          ),
                          child: SizedBox(
                            height: 225.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                width: 15.w,
                              ),
                              itemCount:
                                  controller.homeModel.data!.cars!.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  customCard(index: index),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "News",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const NewsDetailsScreen());
                                },
                                child: Text(
                                  "More >",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorHelper.secondryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                height: 15.w,
                              ),
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) =>
                                  const customCardNews(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        });
  }
}
