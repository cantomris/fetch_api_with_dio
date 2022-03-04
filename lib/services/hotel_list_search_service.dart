import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HotelListSearchService {
  final String url;
  final dynamic data;
  final String _key = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjY0NEJDMjExNEY2Q0FFNkMwQzRGRDM2NTI4NzQ0NUVGIiwidHlwIjoiSldUIn0.eyJuYmYiOjE2NDYzOTA4MDUsImV4cCI6MTY0NjQ3NzIwNSwiaXNzIjoiaHR0cDovL2lzNGlkZW50aXR5Lmdlemlub21pLmNvbSIsImF1ZCI6WyJhY2VudGVfYXBpX3Jlc291cmNlIiwiZGVtYW5kX2FwaV9yZXNvdXJjZSIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwiZWxhc3RpY3NlYXJjaF9sb2dfYXBpX3Jlc291cmNlIl0sImNsaWVudF9pZCI6ImFjZW50ZV9nZXppbm9taSIsInN1YiI6ImViZThjMTMwLTU2ZTgtNGJlMC1iMzljLWY0NDM2YWJiZTMwNCIsImF1dGhfdGltZSI6MTY0NjM5MDgwNSwiaWRwIjoibG9jYWwiLCJuYW1lIjoiQ2FuIFRvbXJpcyIsInByZWZlcnJlZF91c2VybmFtZSI6ImMudG9tcmlzQGdlemlub21pLmNvbSIsImp0aSI6IjU4N0NGQjM2NkYyNTRDM0RENTUyMkUxOTlENjAyREE5IiwiaWF0IjoxNjQ2MzkwODA1LCJzY29wZSI6WyJhY2VudGVfYXBpIiwiYWRkcmVzcyIsImRlbWFuZF9hcGkiLCJlbWFpbCIsIm1hZ251c19pZCIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwib3BlbmlkIiwicHJvZmlsZSIsInJvbGVzIiwib2ZmbGluZV9hY2Nlc3MiXSwiYW1yIjpbInB3ZCJdfQ.IXbZKCEyUB7QbfJEIXyVoz1kviUcDWtuokQcVBy73rO3KtdWtLYRhbyhs_o41xyVgrAv7DmF-jlEfsEhAGCu3TDR-BcIEAzUlREKCb3-apiLarwrlpgfKnZ1aF5w_L-joTyeec5R-zXEjDMHFxeDiIgNcK5yIyBG98MFppAbmgNNe9wFjDYVib3dKR1r1Q3nahGp8w1EN3YfY2Ylc3AhEOBTCWQPz2qmIDg_jcU7aQoFFDh_hBmjbks1XDCo-U9pa0Xqg4oBVhf0-oVo0QATmZaYZK1y1HypBlDFEu-xPO3_mfINyty3gnyCT38zTmk8KYqDJk8Xhyw1KkJQEPX5Mw';

  HotelListSearchService({this.url, this.data});

  Dio _dio() {
    return Dio(
          BaseOptions(
            headers: {
              'X-Guest-Contact-Id': '0',
              'Content-Type': 'application/json',
              'X-Agency-Id': '1',
              'X-Channel-Id': '1',
              'X-Marketing-Id': '1',
              'X-Role-Id': '1',
              'X-Sales-Department-Id': '1',
              'X-Seller-Contact-Id': '1',
              'X-Current-User-Id': '1',
              'X-Language-Type': '1',
              'X-Branch-Id': '-1',
              'X-Is-Fly-Express-Customer': 'false',
              'X-Is-Unknow-User': 'false',
              'Authorization':
              'Bearer ${_key}'
            },
      )
    );
  }

  void get({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    var body = jsonEncode(data);
    _dio().post(url, data: body).then((res) {
      if (onSuccess != null) {
        debugPrint('HOTEL LIST DATA OK!');
        return onSuccess(res.data);
      }
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
