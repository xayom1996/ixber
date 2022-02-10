import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/pages/dunkers_page.dart';
import 'package:ixber/theme/text_theme.dart';

class CompetitionsPage extends StatelessWidget {
  CompetitionsPage({Key? key}) : super(key: key);

  List<String> cups = [
    'NBA ALL-STAR SLAM DUNK CONTEST 2021',
    'FIBA 3x3 WORLD CUP CHINA 2019',
    'NBA ALL-STAR SLAM DUNK CONTEST 2020',
    'FIBA 3x3 WORLD CUP QUALIFIER 2019',
    'NBA ALL-STAR SLAM DUNK CONTEST 2019',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find and enjoy'.toUpperCase(),
                      style: font28.copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.8
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      'YOUR favorite dunk'.toUpperCase(),
                      style: font28,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    for (var cup in cups)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DunkersPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 24.h),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D8D8D)),
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    cup.toUpperCase(),
                                    maxLines: 2,
                                    style: font18,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white.withOpacity(0.7),
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