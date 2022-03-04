import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_controller.dart';
import 'package:get/get.dart';

class HotelListSearchDetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HotelListSearchDetailController());
  }

}