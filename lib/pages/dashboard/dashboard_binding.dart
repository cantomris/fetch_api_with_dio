import 'package:fetch_api_using_dio/pages/account/account_controller.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_controller.dart';
import 'package:fetch_api_using_dio/pages/all_data/all_data_controller.dart';
import 'package:fetch_api_using_dio/pages/all_data_monday/all_data_controller_monday.dart';
import 'package:fetch_api_using_dio/pages/home/home_controller.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_controller.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<AllDataControllerMonday>(() => AllDataControllerMonday());
    Get.lazyPut<PostsController>(() => PostsController());
    Get.lazyPut<HotelsController>(() => HotelsController());
  }
}