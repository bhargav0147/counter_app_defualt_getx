import 'package:counter_app_defualt_getx/counter/view/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
void main()
{
  runApp(DevicePreview(
    builder: (context) => Sizer(
      builder: (context, orientation, deviceType) =>  GetMaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(p0) => HomeScreen()
        },
      ),
    ),
  ));
}