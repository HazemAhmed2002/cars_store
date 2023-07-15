import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customCard extends StatelessWidget {
  const customCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Color(0xff8E8E93),
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
              child: Image.asset(
                'assets/images/car_1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Text(
            "Lamborghini",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const Text(
            "\$67,600",
            style: TextStyle(fontSize: 12, color: Color(0xff1DB854)),
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
  }
}
