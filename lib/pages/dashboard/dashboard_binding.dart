import 'package:fetch_api_using_dio/pages/hotel_list_search/hotel_list_search_controller.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_controller.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HotelListSearchController>(() => HotelListSearchController());
    Get.lazyPut<PostsController>(() => PostsController());
    Get.lazyPut<HotelListSearchDetailController>(() => HotelListSearchDetailController());
  }
}