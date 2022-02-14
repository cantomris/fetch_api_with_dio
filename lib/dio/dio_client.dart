// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:fetch_api_using_dio/models/post.dart';
//
// class DioClient{
//   final Dio dio = Dio();
//
//   static const baseUrl = 'https://jsonplaceholder.typicode.com';
//   static const postsEndpoint = baseUrl + '/posts';
//
//   Future<Post> fetchPost(int postId) async {
//     try {
//       final response = await dio.get(postsEndpoint + '/$postId');
//       debugPrint(response.toString());
//       return Post.fromJson(response.data);
//     } on DioError catch (e) {
//       debugPrint('Status code: ${e.response.statusCode.toString()}');
//       throw Exception("Failed to load post: $postId");
//
//     }
//   }
// }