import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map data;

  ApiRequest({this.url, this.data});

  Dio _dio() {
    return Dio(
          BaseOptions(
        headers: {'Authorization': 'Bearer ...'},
      )
    );
  }

  void get({
    Function() beforeSend,
    Function(List data) onSuccess,
    Function(dynamic error) onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
