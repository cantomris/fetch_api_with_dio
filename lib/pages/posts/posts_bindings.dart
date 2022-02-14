import 'package:get/get.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_controller.dart';

class PostsBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => PostsController());
  }
}