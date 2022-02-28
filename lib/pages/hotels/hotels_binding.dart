import 'package:get/get.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_controller.dart';

class HotelBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HotelsController());
  }
}