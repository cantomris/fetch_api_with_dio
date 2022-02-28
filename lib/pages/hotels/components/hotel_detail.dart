import 'package:fetch_api_using_dio/models/test_hotels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelDetailPage extends StatelessWidget {

 final TestHotels hotelDetail;
  const HotelDetailPage({Key key, this.hotelDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Hotel Detail Page')),
    body: Container(child: Center(child: Text(Get.arguments['hotelname'])),));
  }
}
