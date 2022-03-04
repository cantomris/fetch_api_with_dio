import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelListSearchDetailPage extends StatelessWidget {
  const HotelListSearchDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Detail')),
      body: GetBuilder<HotelListSearchDetailController>(
        builder: (controller) {
          return LoadingOverlay(
            isLoading: controller.isLoading,
            child: Center(
              child: Text('Hotel detail'),
            ),
          );
        },
      ),
    );
  }
}
