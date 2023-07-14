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
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: 340.w,
                        height: 168.h,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: false,
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
                bottom: 10.h,
                left: 0.w,
                right: 0.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 8.w : 5.w,
                        height: 5.h,
                        margin: EdgeInsets.symmetric(
                          horizontal: 1.h,
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
              Positioned(
                  bottom: 20.h,
                  left: 45.w,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Extreme bump test",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA4AEAE),
                          )),
                      Text("First test! 100km/h extreme bump test",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 20.h),
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
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/4.png",
                              height: 25.h,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              "RX-VISIONs",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10.w,
                      ),
                  itemCount: 5),
            ),
          ),
        ],
      ),
    );
  }
}
