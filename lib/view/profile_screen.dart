import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF1F2F3),
        bottomNavigationBar: buildBottomNavigation(context),
        body: Column(
          children: [
            SizedBox(height: 20.h),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            //   child: getSearch(
            //     isSearch: false,
            //     leadingIcon: AppIcons.backtrackIcon,
            //     leadingOnTap: () => {},
            //     trailingIcon: AppIcons.setting,
            //     trailingData: CircleAvatar(
            //       backgroundColor: LightThemeColors.backgroundColor,
            //       radius: 18.h,
            //       child: SvgPicture.asset(
            //           width: 14.w,
            //           height: 14.h,
            //           AppIcons.chat, // Replace with your close icon path
            //           color: LightThemeColors.appBarIconsColor),
            //     ),
            //     size: 14,
            //   ),
            // ),
            SizedBox(height: 37.9.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
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
                            "Sebastian",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "BMW 3 Series/7 Series owner",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70.w,
                        height: 24.h,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0.r),
                            ), // Customize the border radius
                          ),
                          onPressed: () {},
                          child: Text("+ Follow",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      // CustomListView(
                      //   itemBuilder: controller.buildFirstListItemsForProfile,
                      //   height: 60.h,
                      //   shrinkWrap: true,
                      //   scrollDirection: Axis.horizontal,
                      //   itemCount: 3,
                      //   separatorBuilder: SizedBox(
                      //     width: 20.w,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget buildBottomNavigation(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 456.h,
        decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .copyWith(primary: Colors.white)
                .primary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Opacity(
                opacity: .8,
                child: Row(
                  children: [
                    Image.asset('assets/images/search.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("Common Functions", style: TextStyle(fontSize: 12.sp))
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              // CustomListView(
              //   height: 76.h,
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemBuilder: controller.buildSecondListItemsForProfile,
              //   scrollDirection: Axis.horizontal,
              //   separatorBuilder: SizedBox(
              //     width: 10.w,
              //   ),
              //   itemCount: controller.commonFunctionsModel.length,
              // ),
              SizedBox(height: 28.h),
              Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/search.png',
                          height: 15.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "My cars",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 30.h,
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text(
                        "Owned/Driven",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1.h,
                      color: Color(0xFFF3F3F5)),
                ],
              ),
              SizedBox(height: 23.h),
              ListTile(
                leading: Text(
                  "Like List",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 30.h,
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'assets/images/search.png',
                          height: 15.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Others",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 30.h,
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text(
                        "Feedback",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1.h,
                      color: Theme.of(context).colorScheme.secondary),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log Out',
                    style: TextStyle(color: Color(0xff1DB854), fontSize: 14.sp),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
