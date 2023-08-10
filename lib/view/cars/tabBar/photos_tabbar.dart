import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotosTabBar extends StatelessWidget {
  const PhotosTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "2020 Cayman 2T",
            style: TextStyle(
              fontSize: 12.sp,
              color: ColorHelper.secondryColorText,
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 3,
                    mainAxisExtent: 108),
                itemCount: 9,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/car.png',
                        width: 108,
                        height: 80,
                        fit: BoxFit.fill,
                      ));
                }),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "2020 boxster spyder",
            style: TextStyle(
              fontSize: 12.sp,
              color: ColorHelper.secondryColorText,
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 3,
                    mainAxisExtent: 108),
                itemCount: 9,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/car2.png',
                        width: 108,
                        height: 80,
                        fit: BoxFit.fill,
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
