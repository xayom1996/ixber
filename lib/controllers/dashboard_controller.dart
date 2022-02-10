import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ixber/pages/athelete_page.dart';
import 'package:ixber/pages/competitions_page.dart';
import 'package:ixber/pages/dunkers_page.dart';
import 'package:ixber/pages/favorites_page.dart';
import 'package:ixber/pages/main_page.dart';
import 'package:ixber/pages/settings_page.dart';

class DashboardController extends GetxController {
  static DashboardController get to => Get.find(tag: 'dashboard');
  var tabIndex = 0.obs;
  late List<Widget> pages;

  @override
  void onInit(){
    pages = [
      MainPage(),
      CompetitionsPage(),
      FavoritesPage(),
      SettingsPage(),
    ];
    super.onInit();
  }

  Widget get currentPage => pages[tabIndex.value];

  void changeTabIndex(int index) async {
      tabIndex.value = index;
  }
}