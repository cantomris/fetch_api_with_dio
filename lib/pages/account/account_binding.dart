import 'package:get/get.dart';
import 'package:fetch_api_using_dio/pages/account/account_controller.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountController());
  }
}
