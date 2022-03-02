import 'package:fetch_api_using_dio/pages/all_data/all_data_controller.dart';
import 'package:fetch_api_using_dio/pages/all_data_monday/all_data_controller_monday.dart';
import 'package:get/get.dart';

class AllDataBindingMonday extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AllDataControllerMonday());
  }
}