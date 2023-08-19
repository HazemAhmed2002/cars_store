import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../customWidget/custom_appbar.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.circleAvatarColor,
      appBar: CustomAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(
                          children: [
                            CircleAvatar(
                              radius: 25.h,
                              backgroundImage: const NetworkImage(
                                  "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_94f12fbf25.jpg"),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Hazem",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontSize: 14.sp,
                                      color: ColorHelper.iconColor),
                            )
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20.w,
                        ),
                    itemCount: 15),
              ),
              Row(
                children: [
                  Text(
                    "Recommend",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorHelper.secondryColor,
                        ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: ColorHelper.secondryColor,
                    size: 30.h,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                  right: 20.w,
                  bottom: 10.h,
                ),
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25.h,
                                  backgroundImage: const NetworkImage(
                                      "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_94f12fbf25.jpg"),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prescott",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: ColorHelper.secondryColor,
                                          ),
                                    ),
                                    Text(
                                      "BMW 3 Series owner",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 24.h,
                                  width: 71.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+ Follow",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: ColorHelper.secondryColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 10),
                              child: Text(
                                "Volkswagen T-Roc: Interior dimensions revealed",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: ColorHelper.circleAvatarColor,
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQJxgIa1tZKl_V1r_zjOKB8YhL3VMjhgi__AMF5bmSUICNCZmIp"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    "5 days ago",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: Image.asset(
                                      "assets/images/search.png",
                                      height: 15.h,
                                    ),
                                  ),
                                  Text(
                                    "10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Image.asset(
                                      "assets/images/search.png",
                                      height: 15.h,
                                    ),
                                  ),
                                  Text(
                                    "10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Image.asset(
                                      "assets/images/search.png",
                                      height: 15.h,
                                    ),
                                  ),
                                  Text(
                                    "10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                    itemCount: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
