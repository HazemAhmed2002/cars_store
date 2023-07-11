import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? dropdownValue;
  final List<String> list = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  List imageList = [
    {"id": 1, "image_path": 'assets/images/car.png'},
    {"id": 2, "image_path": 'assets/images/car2.png'},
    {"id": 3, "image_path": 'assets/images/car3.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: const Icon(Icons.message_outlined)),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xffF1F2F3),
      body: Stack(
        children: [
          CarouselSlider(
            items: imageList
                .map(
                  (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.cover,
                    width: 340.w,
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
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.h,
                    margin: EdgeInsets.symmetric(
                      horizontal: 3.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? const Color(0xff1DB854)
                            : const Color(0xff2A3034)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
