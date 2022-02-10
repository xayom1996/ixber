import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/theme/text_theme.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  List<Map> settings = [
    {'name': 'Buy premium', 'icon': 'assets/icons/buy_premium.svg'},
    {'name': 'Privacy policy', 'icon': 'assets/icons/privacy_policy.svg'},
    {'name': 'Terms of use', 'icon': 'assets/icons/terms_of_use.svg'},
    {'name': 'Rate app', 'icon': 'assets/icons/rate_app.svg'},
    {'name': 'Support', 'icon': 'assets/icons/support.svg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/logo.svg',
                  alignment: Alignment.center,
                  width: 104.w,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Settings'.toUpperCase(),
                  style: font20.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var setting in settings)
                      GestureDetector(
                        onTap: () {

                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 24.h),
                          child: Container(
                            padding: EdgeInsets.only(top: 16, bottom: 16, left: 24),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              color: Color(0xff282828),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  setting['icon'],
                                  alignment: Alignment.center,
                                  height: 18.h,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Text(
                                  setting['name'],
                                  style: font16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}