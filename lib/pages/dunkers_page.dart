import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/pages/athelete_page.dart';
import 'package:ixber/theme/text_theme.dart';

class DunkersPage extends StatelessWidget {
  DunkersPage({Key? key}) : super(key: key);

  List<Map> dunkers = [
    {'name': 'Dwight Howard', 'image': 'assets/images/sportsman1.png', 'age': '35', 'height': '208 cm\n(6\'10)'},
    {'name': 'Elijah Bonds', 'image': 'assets/images/sportsman2.png', 'age': '23', 'height': '188 cm\n(6\'2)'},
    {'name': 'David Carlos', 'image': 'assets/images/sportsman3.png', 'age': '22', 'height': '208 cm\n(6\'10)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
    {'name': 'Gerald Green', 'image': 'assets/images/sportsman4.png', 'age': '35', 'height': '198 cm\n(6\'6)'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'Back',
                              style: font16.copyWith(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'dunkers'.toUpperCase(),
                          style: font20.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          'Name',
                          style: font14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Age',
                        textAlign: TextAlign.center,
                        style: font14,
                      )
                    ),
                    Expanded(
                      child: Text(
                        'Height',
                        textAlign: TextAlign.center,
                        style: font14,
                      )
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var dunker in dunkers)
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    dunker['image'],
                                    alignment: Alignment.center,
                                    height: 40.h,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  dunker['name'],
                                  style: font14,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  dunker['age'],
                                  textAlign: TextAlign.center,
                                  style: font14,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  dunker['height'],
                                  textAlign: TextAlign.center,
                                  style: font14,
                                ),
                              ),
                            ],
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