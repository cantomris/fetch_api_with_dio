import 'package:get/get.dart';

class DashboardController extends GetxController{
  // final String auth_type = Get.arguments['auth_type'];
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}