import 'package:cars_store/view/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;
import 'package:device_preview/device_preview.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // runApp(DevicePreview(
  //   builder: (context) =>  MyApp(),
  // ));
  runApp(const MyApp());
}

double? screenWidth;
double? screenHeight;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final windowSize = ui.window.physicalSize;
    final screenScale = ui.window.devicePixelRatio;
    screenWidth = windowSize.width / screenScale;
    screenHeight = windowSize.height / screenScale;
    return ScreenUtilInit(
        designSize: Size(screenWidth!, screenHeight!),
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              builder: DevicePreview.appBuilder,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: LoginScreen());
        });
  }
}
