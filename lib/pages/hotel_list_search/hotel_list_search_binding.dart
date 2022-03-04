import 'package:fetch_api_using_dio/pages/hotel_list_search/hotel_list_search_controller.dart';
import 'package:get/get.dart';

class HotelListSearchBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HotelListSearchController());
  }
}