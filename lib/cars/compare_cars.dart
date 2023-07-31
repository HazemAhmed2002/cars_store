import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompareCarsScreen extends StatelessWidget {
  const CompareCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        centerTitle: true,
        title: Text(
          "Compare Cars",
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff1B1B1B),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff8E8E93),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(20.w),
          child: Row(
            children: [
              Container(
                width: 90.w,
                height: 90.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white),
                child: Image.asset(
                  'assets/images/car360.png',
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Porsche 718",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff1B1B1B)),
                  ),
                  Text(
                    "Porsche/Luxury/The 2.3L EcoBoost",
                    style: TextStyle(
                        fontSize: 10.sp, color: const Color(0xff8E8E93)),
                  ),
                  Text(
                    "\$62,000.00-\$74,000.00",
                    style: TextStyle(
                        fontSize: 14.sp, color: const Color(0xff1DB854)),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.w),
          child: Container(
            width: double.infinity,
            height: 45.h,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff1DB854)),
                borderRadius: BorderRadius.circular(25.r)),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "+ ADD CARS",
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xff1DB854)),
              ),
            ),
          ),
        ),
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              )),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Select Similar Cars",
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xff8E8E93)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 15,
                            childAspectRatio: 3 / 2,
                            mainAxisExtent: 200),
                    itemCount: 9,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffF1F2F3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/car360.png',
                                  width: 120.w,
                                  height: 80.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Mercedes SLC",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff1B1B1B),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "\$42,70-\$48,70",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff1DB854)),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: const Color(0xff8E8E93),
                                    side: BorderSide(
                                        color: const Color(0xff8E8E93),
                                        style: BorderStyle.solid,
                                        strokeAlign: -5.h),
                                    value: false,
                                    onChanged: (bool? value) {},
                                  ),
                                  Text(
                                    "Compare",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff8E8E93)),
                                  ),
                                ],
                              ),
                            ],
                          ));
                    }),
              ),
            ]),
          ),
        ))
      ]),
    );
  }
}
