import 'package:fetch_api_using_dio/pages/all_data/all_data_controller.dart';
import 'package:get/get.dart';

class AllDataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AllDataController());
  }
}