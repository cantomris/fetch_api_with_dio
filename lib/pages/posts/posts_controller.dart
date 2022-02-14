import 'package:fetch_api_using_dio/models/post.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_provider.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostsProvider().getPostsList(
        onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        // print('Success');
        // print(posts.length);
        update();
      },
        onError: (error) {
        print(error);
        isLoading = false;
        update();
      });
      super.onInit();
  }
}
