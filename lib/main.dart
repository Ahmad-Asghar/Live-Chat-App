import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'View/VIPpage.dart';
import 'View/bottom_nav_bar.dart';
import 'View/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Live Chat',
          theme: ThemeData(
            primarySwatch: AppColors.themeColor,
          ),
          home: const OnBoarding(),
        );
      },

    );
  }
}
