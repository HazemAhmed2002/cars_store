import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class customCard extends StatelessWidget {
  customCard({super.key, required this.index});
  int? index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeConrtoller>(
        init: HomeConrtoller(),
        builder: (conrtoller) {
          return Container(
            width: 150.w,
            height: 225.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 26.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: ColorHelper.iconColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.network(
                      "${conrtoller.homeModel.data!.cars![index!].image}",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  "${conrtoller.homeModel.data!.cars![index!].name}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${conrtoller.homeModel.data!.cars![index!].price}",
                  style:
                      TextStyle(fontSize: 12, color: ColorHelper.secondryColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 10.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => CircleAvatar(
                                  radius: 6.h,
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 5.w,
                                ),
                            itemCount: 3),
                      ),
                      const Icon(Icons.arrow_right_alt),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
