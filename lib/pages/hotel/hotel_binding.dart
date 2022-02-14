import 'package:fetch_api_using_dio/pages/hotel/hotel_controller.dart';
import 'package:get/get.dart';

class HotelBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HotelController());
  }
}