import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotel/hotel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels Page'),),
      body: Container(
        child: GetBuilder<HotelController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: Center(child: Text('Hotel Page'),));
          },
        ),
      )
    );
  }
}
