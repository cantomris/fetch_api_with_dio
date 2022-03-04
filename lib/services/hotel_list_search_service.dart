import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HotelListSearchService {
  final String url;
  final Map data;

  HotelListSearchService({this.url, this.data});

  Dio _dio() {
    return Dio(
          BaseOptions(
        headers: {'Authorization': '...'},
        // headers: {'Authorization': 'Bearer ...'},
      )
    );
  }

  void get({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    _dio().get(url, queryParameters: data).then((res) {
      if (onSuccess != null) {
        debugPrint('GOT THE HOTEL LIST SEARCH DATA');
        return onSuccess(res.data);
      }
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
