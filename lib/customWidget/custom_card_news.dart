import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customCardNews extends StatelessWidget {
  const customCardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Theme.of(context)
            .colorScheme
            .copyWith(primary: ColorHelper.primaryColor)
            .primary,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Porsche Type 997 911 GT2 RSR Flat ",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorHelper.secondryColorText),
                ),
                const Spacer(),
                Text(
                  "By Akshit ep 05,2020",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 66.w,
              height: 66.w,
              decoration: BoxDecoration(
                color: ColorHelper.primaryColor,
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/99-best-luxury-cars-2023-bmw-i7-lead.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
