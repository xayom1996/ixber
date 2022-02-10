import 'package:get/get.dart';
import 'package:ixber/controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(DashboardController(), tag: 'dashboard');
    // Get.put<TestController>(TestController(), tag: 'test');
    // Get.put<HistoryController>(HistoryController(), tag: 'history');
    // Get.put<SettingsController>(SettingsController(), tag: 'settings');
    // Get.put<ScanningController>(ScanningController(), tag: 'scanning');
  }
}