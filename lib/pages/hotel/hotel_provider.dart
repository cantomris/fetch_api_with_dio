import 'package:fetch_api_using_dio/models/hotel.dart';
import 'package:fetch_api_using_dio/services/api_request.dart';
import 'package:flutter/material.dart';

class HotelProvider {
  void getHotelList({
  Function() beforeSend,
  Function() onSuccess,
  // Function(List<Hotel> hotels) onSuccess,
  Function(dynamic error) onError,
}) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null).get(
      beforeSend: () => { if (beforeSend != null) beforeSend() },
      onSuccess: (data) {
        debugPrint('Data success is OK ${data}');
        // onSuccess((data as List).map((hotelJson) => Hotel.fromJson(hotelJson)).toList());
      },
      onError: (error) => { if (onError != null) onError(error)}
    );
  }
}