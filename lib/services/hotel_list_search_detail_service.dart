import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HotelListSearchDetailService {
  final String url;
  final dynamic data;
  final String _key = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjY0NEJDMjExNEY2Q0FFNkMwQzRGRDM2NTI4NzQ0NUVGIiwidHlwIjoiSldUIn0.eyJuYmYiOjE2NDYzMDEyMjcsImV4cCI6MTY0NjM4NzYyNywiaXNzIjoiaHR0cDovL2lzNGlkZW50aXR5Lmdlemlub21pLmNvbSIsImF1ZCI6WyJhY2VudGVfYXBpX3Jlc291cmNlIiwiZGVtYW5kX2FwaV9yZXNvdXJjZSIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwiZWxhc3RpY3NlYXJjaF9sb2dfYXBpX3Jlc291cmNlIl0sImNsaWVudF9pZCI6ImFjZW50ZV9nZXppbm9taSIsInN1YiI6IjZiZjZjMzhiLTAxYjItNDljNy1iMGY1LWUyNjRkOTRkMjI2OSIsImF1dGhfdGltZSI6MTY0NjMwMTIyNywiaWRwIjoibG9jYWwiLCJuYW1lIjoiR29raGFuIE1lbmVrc2UiLCJyb2xlIjpbImRlbWFuZF9yZWFkIiwiQ2FsbENlbnRlciIsImRlbWFuZF9hZG1pbiIsIk9jdG9wdXNJZGVudGl0eUFkbWluQWRtaW5pc3RyYXRvciIsImRlbWFuZF93cml0ZSJdLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJnLm1lbmVrc2VAZ2V6aW5vbWkuY29tIiwianRpIjoiOUEzNjU0NTg4QjU5RkM3MTM1QjY2MUREQjRDMEU4QUQiLCJpYXQiOjE2NDYzMDEyMjcsInNjb3BlIjpbImFjZW50ZV9hcGkiLCJhZGRyZXNzIiwiZGVtYW5kX2FwaSIsImVtYWlsIiwibWFnbnVzX2lkIiwib2N0b3B1c19pZGVudGl0eV9hZG1pbl9hcGkiLCJvcGVuaWQiLCJwcm9maWxlIiwicm9sZXMiLCJvZmZsaW5lX2FjY2VzcyJdLCJhbXIiOlsicHdkIl19.SLKuUl_e6_eQiv1cZwpo683B3exu7lgfLHxxGA-BiSvNCzRsa7DHo-0lgjBGb5ReD9cJUi8665amBMBqmuhXVOuuJZzSCbtFMjY0EbbTirP3NaeAu6aavOKx5yob8Jo2dQ_nwZM3pouT2Aq_09fVsrXWQTrnAzaDwwTh8XgsL6-6Ttt8dIy6cVQNmW_lfPTDecxPEcT8TO8WvKJ_YBVAz69CLUA-DmzbdecA3Owa3kLhTeGJD0XRpilnfPTmkg-vWICA9PCB6KpVyq2ZtysTnJ_6-kHudAsyl3HLUGUC-WaUCZLvvAWTR2YOAe_tORfKN8BtEaRRjJyvEnasAZwBMg';
  HotelListSearchDetailService({this.url, this.data});

  Dio _dio() {
    return Dio(BaseOptions(
      contentType: 'application/json',
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
            'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjY0NEJDMjExNEY2Q0FFNkMwQzRGRDM2NTI4NzQ0NUVGIiwidHlwIjoiSldUIn0.eyJuYmYiOjE2NDYzMDEyMjcsImV4cCI6MTY0NjM4NzYyNywiaXNzIjoiaHR0cDovL2lzNGlkZW50aXR5Lmdlemlub21pLmNvbSIsImF1ZCI6WyJhY2VudGVfYXBpX3Jlc291cmNlIiwiZGVtYW5kX2FwaV9yZXNvdXJjZSIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIiwiZWxhc3RpY3NlYXJjaF9sb2dfYXBpX3Jlc291cmNlIl0sImNsaWVudF9pZCI6ImFjZW50ZV9nZXppbm9taSIsInN1YiI6IjZiZjZjMzhiLTAxYjItNDljNy1iMGY1LWUyNjRkOTRkMjI2OSIsImF1dGhfdGltZSI6MTY0NjMwMTIyNywiaWRwIjoibG9jYWwiLCJuYW1lIjoiR29raGFuIE1lbmVrc2UiLCJyb2xlIjpbImRlbWFuZF9yZWFkIiwiQ2FsbENlbnRlciIsImRlbWFuZF9hZG1pbiIsIk9jdG9wdXNJZGVudGl0eUFkbWluQWRtaW5pc3RyYXRvciIsImRlbWFuZF93cml0ZSJdLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJnLm1lbmVrc2VAZ2V6aW5vbWkuY29tIiwianRpIjoiOUEzNjU0NTg4QjU5RkM3MTM1QjY2MUREQjRDMEU4QUQiLCJpYXQiOjE2NDYzMDEyMjcsInNjb3BlIjpbImFjZW50ZV9hcGkiLCJhZGRyZXNzIiwiZGVtYW5kX2FwaSIsImVtYWlsIiwibWFnbnVzX2lkIiwib2N0b3B1c19pZGVudGl0eV9hZG1pbl9hcGkiLCJvcGVuaWQiLCJwcm9maWxlIiwicm9sZXMiLCJvZmZsaW5lX2FjY2VzcyJdLCJhbXIiOlsicHdkIl19.SLKuUl_e6_eQiv1cZwpo683B3exu7lgfLHxxGA-BiSvNCzRsa7DHo-0lgjBGb5ReD9cJUi8665amBMBqmuhXVOuuJZzSCbtFMjY0EbbTirP3NaeAu6aavOKx5yob8Jo2dQ_nwZM3pouT2Aq_09fVsrXWQTrnAzaDwwTh8XgsL6-6Ttt8dIy6cVQNmW_lfPTDecxPEcT8TO8WvKJ_YBVAz69CLUA-DmzbdecA3Owa3kLhTeGJD0XRpilnfPTmkg-vWICA9PCB6KpVyq2ZtysTnJ_6-kHudAsyl3HLUGUC-WaUCZLvvAWTR2YOAe_tORfKN8BtEaRRjJyvEnasAZwBMg'
      },
    ));
  }

  void get({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    var body = jsonEncode(data);
    _dio().post(url, data: body).then((res) {
      debugPrint('GOT THE HOTEL DETAIL DATA');
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
