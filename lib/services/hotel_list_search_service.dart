import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HotelListSearchService {
  final String url;
  final dynamic data;
  final String _key = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjY0NEJDMjExNEY2Q0FFNkMwQzRGRDM2NTI4NzQ0NUVGIiwidHlwIjoiSldUIn0.eyJuYmYiOjE2NDY2NDE1ODEsImV4cCI6MTY0NjcyNzk4MSwiaXNzIjoiaHR0cDovL2lzNGlkZW50aXR5Lmdlemlub21pLmNvbSIsImF1ZCI6WyJhY2VudGVfYXBpX3Jlc291cmNlIiwiZGVtYW5kX2FwaV9yZXNvdXJjZSIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwiZWxhc3RpY3NlYXJjaF9sb2dfYXBpX3Jlc291cmNlIl0sImNsaWVudF9pZCI6ImFjZW50ZV9nZXppbm9taSIsInN1YiI6ImViZThjMTMwLTU2ZTgtNGJlMC1iMzljLWY0NDM2YWJiZTMwNCIsImF1dGhfdGltZSI6MTY0NjY0MTU4MSwiaWRwIjoibG9jYWwiLCJuYW1lIjoiQ2FuIFRvbXJpcyIsInByZWZlcnJlZF91c2VybmFtZSI6ImMudG9tcmlzQGdlemlub21pLmNvbSIsImp0aSI6IjZGREJEMDIyN0JDNjFDNzRCRjIxNEIzNDhERDE1RkQyIiwiaWF0IjoxNjQ2NjQxNTgxLCJzY29wZSI6WyJhY2VudGVfYXBpIiwiYWRkcmVzcyIsImRlbWFuZF9hcGkiLCJlbWFpbCIsIm1hZ251c19pZCIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwib3BlbmlkIiwicHJvZmlsZSIsInJvbGVzIiwib2ZmbGluZV9hY2Nlc3MiXSwiYW1yIjpbInB3ZCJdfQ.IT_2RjgsdwYBNyEI1MTV6kg31dJJTTiSv8SLXgHC0vwqu53-9Njyq6mRsAmxjJx5zycUPSbEidZnKUXOdKSoQYF5WYDRoCFBJyFNlbY07S1Z1VzZJeS8xEkyif4PnSCnuDeuI7GzgqxvSk2j6tQOaJBU7oyA-osaSIwOfb_KUW5CqiXrM2de8pt7U5iJsYdz7vQP4Qaz5GPqg9dwogk26xVTXYj-kIVlIHx7X2Eahemvq6J6dUN4z_E3b1H6vcdhFm3TK5fBc9oHFaBFxJ7TNdU6rbNmiLe81Hq-Sa6YX0_g_ZVGt4DPXU9QBlbQaZ9V8yCpGjnnEsy6BYoVXjV-gg';

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
