import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ixber/controllers/dashboard_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ixber/theme/color_theme.dart';


class DashboardPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find(tag: 'dashboard');

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: Obx(() =>
              IndexedStack(
                key: PageStorageKey('Indexed'),
                index: dashboardController.tabIndex.value,
                children: dashboardController.pages,
              ),
          )
      ),
      bottomNavigationBar: MyNavBar(
          items: [
            {
              'iconPath': 'assets/icons/home.svg',
              'title': 'Home',
            },
            {
              'iconPath': 'assets/icons/cup.svg',
              'title': 'Competitions',
            },
            {
              'iconPath': 'assets/icons/star.svg',
              'title': 'Stars',
            },
            {
              'iconPath': 'assets/icons/settings.svg',
              'title': 'Settings',
            },
          ],
          // icons: [
          //   FaIcon(FontAwesomeIcons.wifi),
          //   FaIcon(FontAwesomeIcons.history),
          //   FaIcon(FontAwesomeIcons.qrcode),
          //   FaIcon(FontAwesomeIcons.cog),
          // ]
      ),
    );
  }
}

class MyNavBar extends StatelessWidget{
  final List<Map> items;
  MyNavBar({Key? key, required this.items}) : super(key: key);

  final DashboardController dashboardController = Get.find(tag: 'dashboard');

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64.h,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.94),
          // border: Border.all(color: Colors.red),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              // spreadRadius: 5,
              blurRadius: 20,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.only(
          left: 37.sp,
          right: 37.sp
        ),
        child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) =>
                InkWell(
                  onTap: (){
                    dashboardController.changeTabIndex(index);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          items[index]['iconPath'],
                          color: dashboardController.tabIndex.value == index
                              ? Colors.white
                              : Color(0xff8B8989),
                          width: 19.sp,
                          height: 19.sp,
                      ),
                      if (dashboardController.tabIndex.value == index)
                        SizedBox(
                          height: 5.h,
                        ),
                      if (dashboardController.tabIndex.value == index)
                        Container(
                          width: 10.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                    ],
                  ),
                ),
            ),
          )
        )
    );
  }

}

ListTile buildListTile(
    BuildContext context, IconData icon, String title, Widget onPress) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
    onTap: () {
      if(icon == Icons.supervised_user_circle_rounded)
        Navigator.pop(context);
      // Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => onPress));
    },
    leading: Icon(
      icon,
      size: 22,
      color: Theme.of(context).primaryColor,
    ),
    title: Text(
      title,
      style: TextStyle(letterSpacing: 2).copyWith(fontSize: 16),
    ),
  );
}
