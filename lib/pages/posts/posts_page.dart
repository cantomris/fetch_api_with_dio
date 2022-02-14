import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/posts/components/post_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_controller.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Posts')),
        body: Container(child: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                  itemCount: controller.postsList.length,
                  itemBuilder: (context, index) => Container(
                    child: PostListItem(
                      post: controller.postsList[index],
                    ),
                  ),
                ));
          },
        )));
  }
}
