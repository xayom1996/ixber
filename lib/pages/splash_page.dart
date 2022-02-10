import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ixber/pages/dashboard_page.dart';
import 'package:ixber/theme/text_theme.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  RxBool show = true.obs;

  @override
  void initState() {
    super.initState();
    // setTimer();
  }

  // void setTimer(){
  //   Timer(const Duration(milliseconds: 1500), () {
  //     Navigator.pushAndRemoveUntil(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => OnBoardingPage(),
  //       ),
  //           (route) => false,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/splash_background.png'),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          child: Stack(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            fit: StackFit.expand,
            children: [
              Container(
                height: 1.sh,
                width: 1.sw,
                child: Image(
                  image: AssetImage('assets/splash_background.png'),
                  fit: BoxFit.fill,
                ),
              ),
              ColoredBox(
                  color: Color(0xff171414).withOpacity(0.63) // 0: Light, 1: Dark
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 133.h,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/logo.svg',
                          alignment: Alignment.center,
                          width: 172.w,
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        SvgPicture.asset(
                          'assets/premium.svg',
                          alignment: Alignment.center,
                          width: 223.w,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.sp),
                          child: Text(
                            'search by contest'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: font28.copyWith(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.sp),
                          child: Text(
                            'Bookmarks'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: font28.copyWith(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.sp),
                          child: Text(
                            'ads removing'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: font28.copyWith(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 24.sp),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.sp),
                            ),
                            padding: EdgeInsets.all(16.sp),
                            onPressed: (){

                            },
                            color: Color(0xff14A0FF),
                            child: Text(
                                'Buy premium for \$0.99'.toUpperCase(),
                                style: font20.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                'Terms of Use'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: font12.copyWith(
                                  color: Color(0xffFFFFFF).withOpacity(0.5)
                                )
                            ),
                            Text(
                                'Restore'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: font12.copyWith(
                                    color: Color(0xffFFFFFF).withOpacity(0.5)
                                )
                            ),
                            Text(
                                'Privacy policy'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: font12.copyWith(
                                    color: Color(0xffFFFFFF).withOpacity(0.5)
                                )
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 58.sp,
                right: 8.sp,
                child: IconButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardPage(),
                      ),
                          (route) => false,
                    );
                  },
                  icon: Icon(
                    Icons.close,
                    size: 24.sp,
                    color: Colors.white,
                    // #5B5B5B
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}