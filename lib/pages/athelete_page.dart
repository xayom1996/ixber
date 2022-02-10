import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/theme/color_theme.dart';
import 'package:ixber/theme/text_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AthletePage extends StatelessWidget {
  AthletePage({Key? key}) : super(key: key);

  Map athlete = {
    'name': 'Dwight Howard',
    'image': 'assets/images/sportsman5.png',
    'Age': '31',
    'Height': '198 (6,6)',
    'Jump preference': 'One foot',
    'contests': [
      {'place': '3', 'name': '2011 – NBA All–Star Slam Dunk Contest'},
      {'place': '2', 'name': '2010 – NBA All–Star Slam Dunk Contest'},
    ],
    'videos': [
      {'image': 'assets/images/sportsman5.png', 'title': 'Block by Precious Achiuwa', 'date': '6 days ago', 'url': 'https://www.youtube.com/watch?v=ufspPscaYNk'},
      {'image': 'assets/images/sportsman5.png', 'title': 'Block by Precious Achiuwa', 'date': '6 days ago', 'url': 'https://www.youtube.com/watch?v=ufspPscaYNk'},
      {'image': 'assets/images/sportsman5.png', 'title': 'Block by Precious Achiuwa', 'date': '6 days ago', 'url': 'https://www.youtube.com/watch?v=ufspPscaYNk'},
    ],
  };

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24,
              ),
            ),
            Text(
              'Athlete',
              style: font28,
            ),
            SvgPicture.asset(
              'assets/icons/star.svg',
              alignment: Alignment.center,
              width: 18.w,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/sportsman5.png',
                      height: 64.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      athlete['name'],
                      style: font20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Age',
                              style: font14.copyWith(
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              athlete['Age'],
                              style: font14.copyWith(
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xff464646)),
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Height',
                              style: font14.copyWith(
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              athlete['Height'],
                              style: font14.copyWith(
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xff464646)),
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Jump preference',
                              style: font14.copyWith(
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              athlete['Jump preference'],
                              style: font14.copyWith(
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.sp),
                  child: Text(
                    'Contests',
                    style: font28,
                  ),
                ),
                Column(
                  children: [
                    for (var contest in athlete['contests'])
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/medal_${contest['place']}.svg',
                              height: 25.h,
                            ),
                            SizedBox(width: 16.w,),
                            Text(
                              contest['name'],
                              style: font14,
                            ),
                          ],
                        ),
                      )
                  ],
                ),
                Column(
                  children: [
                    for (var video in athlete['videos'])
                      GestureDetector(
                        onTap: () {
                          _launchURL(video['url']);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset(
                                  video['image'],
                                  height: 92.h,
                                ),
                                SizedBox(width: 16.w,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        video['title'],
                                        style: font14.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 22.h,
                                      // ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            video['date'],
                                            style: font14.copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffE4E4E4)
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/upload.svg',
                                            height: 21.h,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
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