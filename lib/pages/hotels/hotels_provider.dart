import 'package:fetch_api_using_dio/models/hotels.dart';
import 'package:fetch_api_using_dio/models/test_hotels.dart';
import 'package:fetch_api_using_dio/services/api_request.dart';
// import 'package:flutter/material.dart';

class HotelsProvider {
  void getHotelList({
    Function() beforeSend,
    Function(List<TestHotels> posts) onSuccess,
    // Function(List<Hotel> hotels) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'http://192.168.11.159:3000/hotel_list_cache_models', data: null).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          // debugPrint('Data success is OK ${data}');
          // onSuccess((data as List).map((hotelJson) => Hotel.fromJson(hotelJson)).toList());
          onSuccess((data as List)
              .map((hotelJson) => TestHotels.fromJson(hotelJson))
              .toList());
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
