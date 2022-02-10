import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ixber/pages/onboarding_page.dart';
import 'package:ixber/pages/splash_page.dart';
import 'package:ixber/controllers/dashboard_bindings.dart';
import 'package:ixber/theme/color_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ixber",
        initialBinding: DashboardBinding(),
        home: SplashPage(),
        theme: ThemeData(
          fontFamily: 'OpenSans',
          // brightness: Brightness.dark,
          primaryColor: primary,
          scaffoldBackgroundColor: backgroundColor,
          // primaryColorDark: white2,
          // primaryColorLight: secondaryDBlue,
        ),
      ),
    );
  }
}