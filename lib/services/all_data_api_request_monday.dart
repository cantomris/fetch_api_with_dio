import 'package:dio/dio.dart';
import 'package:fetch_api_using_dio/models/hotel_data_model_monday.dart';
import 'package:fetch_api_using_dio/models/hotel_list_cache_model_monday.dart';
import 'package:flutter/material.dart';

class AllDataApiRequestMonday {
  final String url;
  final Map data;

  AllDataApiRequestMonday({this.url, this.data});

  Dio _dio() {
    return Dio(
          BaseOptions(
        headers: {'Authorization': '...'},
        // headers: {'Authorization': 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjY0NEJDMjExNEY2Q0FFNkMwQzRGRDM2NTI4NzQ0NUVGIiwidHlwIjoiSldUIn0.eyJuYmYiOjE2NDQ4Mzg2NTEsImV4cCI6MTY0NDkyNTA1MSwiaXNzIjoiaHR0cDovL2lzNGlkZW50aXR5Lmdlemlub21pLmNvbSIsImF1ZCI6WyJhY2VudGVfYXBpX3Jlc291cmNlIiwiZGVtYW5kX2FwaV9yZXNvdXJjZSIsIm9jdG9wdXNfaWRlbnRpdHlfYWRtaW5fYXBpIl0sImNsaWVudF9pZCI6ImFjZW50ZV9nZXppbm9taSIsInN1YiI6ImViZThjMTMwLTU2ZTgtNGJlMC1iMzljLWY0NDM2YWJiZTMwNCIsImF1dGhfdGltZSI6MTY0NDgzODY1MSwiaWRwIjoibG9jYWwiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJjLnRvbXJpc0BnZXppbm9taS5jb20iLCJuYW1lIjoiYy50b21yaXNAZ2V6aW5vbWkuY29tIiwianRpIjoiMjI4MkQ1MTEwRTlEQkNDRjI5NUQyQThDRTA4QTIxNTciLCJpYXQiOjE2NDQ4Mzg2NTEsInNjb3BlIjpbImFjZW50ZV9hcGkiLCJhZGRyZXNzIiwiZGVtYW5kX2FwaSIsImVtYWlsIiwibWFnbnVzX2lkIiwib2N0b3B1c19pZGVudGl0eV9hZG1pbl9hcGkiLCJvcGVuaWQiLCJwcm9maWxlIiwicm9sZXMiLCJvZmZsaW5lX2FjY2VzcyJdLCJhbXIiOlsicHdkIl19.tYydJa6S2gby69WCeNkl2T3RRVh7F60B25L-BeJyK6Ft1-scOlkJSaLbRG8jb_zTumROir7OkbtUjAf0swUk1ULyPOYNz0epOfo55SOyMnBPZEkSThYatZHps5wB2Nb_iP8Uw58wVIcrN1qzT95kz6UnBw8CULVehIo4-d3KiwMj_E9jKdHC55HoUcM76wXhhilJsdIEv6f3yv5CuW5czNZPpTHZ4MdGmuY69LEjDT6yynE5vdi2DNgXOApSZv5LiDzHUOXndWaxnwcpckFKXalhXj_HLmf_xnHSYHYCMPRWOus2JALWN6E9O4Ng15YvGvTMKjj0Tpj9CGG-1wgAiw'},
      )
    );
  }

  void get({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((res) {
      if (onSuccess != null) {
        print('GOT THE DATA');
        return onSuccess(res.data);
      };
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
