import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/pages/athelete_page.dart';
import 'package:ixber/theme/text_theme.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  List<Map> sportsmen = [
    {'name': 'DOUG\nANDERSON', 'image': 'assets/images/sportsman1.png', 'location': 'KALAMAZOO, UNITED STATES'},
    {'name': 'CONNOR\nBRATH', 'image': 'assets/images/sportsman2.png', 'location': 'UNITED STATES'},
    {'name': 'TONY\nCROSBY', 'image': 'assets/images/sportsman3.png', 'location': 'ATLANTA, UNITED STATES'},
    {'name': 'MARCO\nFAVRETTO', 'image': 'assets/images/sportsman4.png', 'location': 'MILAN, ITALY'},
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
                    for (var sportsman in sportsmen)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AthletePage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 24.h),
                          child: Container(
                            padding: EdgeInsets.only(top: 16, bottom: 16, left: 24),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff8D8D8D)),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage(sportsman['image']),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      sportsman['name'].toUpperCase(),
                                      maxLines: 2,
                                      style: font18,
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage('assets/icons/flug.png'),
                                        ),
                                        SizedBox(width: 8.w,),
                                        Text(
                                          sportsman['location'].toUpperCase(),
                                          maxLines: 2,
                                          style: font12,
                                        ),
                                      ],
                                    ),
                                  ],
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