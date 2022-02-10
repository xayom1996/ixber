import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixber/pages/athelete_page.dart';
import 'package:ixber/theme/color_theme.dart';
import 'package:ixber/theme/text_theme.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({Key? key}) : super(key: key);

  List<Map> favorites = [
    {'name': 'DOUG ANDERSON', 'image': 'assets/images/sportsman1.png', 'location': 'KALAMAZOO, UNITED STATES'},
    {'name': 'CONNOR BRATH', 'image': 'assets/images/sportsman2.png', 'location': 'UNITED STATES'},
    {'name': 'TONY CROSBY', 'image': 'assets/images/sportsman3.png', 'location': 'ATLANTA, UNITED STATES'},
    {'name': 'MARCO FAVRETTO', 'image': 'assets/images/sportsman4.png', 'location': 'MILAN, ITALY'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Favorites',
          style: font20.copyWith(
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var sportsman in favorites)
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
                          Image(
                            image: AssetImage(sportsman['image']),
                            width: 40.w,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            sportsman['name'].toUpperCase(),
                            maxLines: 2,
                            style: font18,
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            alignment: Alignment.center,
                            width: 18.w,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}