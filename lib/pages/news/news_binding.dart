import 'package:fetch_api_using_dio/pages/news/news_controller.dart';
import 'package:get/get.dart';

class NewsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NewsController());
  }
}