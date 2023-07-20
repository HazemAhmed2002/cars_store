import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar CustomAppBar = AppBar(
    toolbarHeight: 90,
    elevation: 0.0,
    backgroundColor: const Color(0xffF1F2F3),
    title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Color(0xff1DB854),
                    )),
              ))
        ]),
  );