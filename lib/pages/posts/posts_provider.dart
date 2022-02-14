import 'package:fetch_api_using_dio/models/post.dart';
import 'package:fetch_api_using_dio/services/api_request.dart';

class PostsProvider {
  void getPostsList({
    Function() beforeSend,
    Function(List<Post> posts) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null).get(
      beforeSend: () => { if (beforeSend != null) beforeSend() },
      onSuccess: (data){
        onSuccess((data as List).map((postJson) => Post.fromJson(postJson)).toList());
        // var postsJson = data as List;
        // List<Post> posts = postsJson.map((postJson) => Post.fromJson(postJson)).toList();
        // onSuccess(posts);
    },
    onError: (error) => {if (onError != null) onError(error)});
  }
}