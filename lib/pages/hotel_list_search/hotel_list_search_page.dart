import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search/hotel_list_search_controller.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search/components/hotel_list_search_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelListSearchPage extends StatelessWidget {
  const HotelListSearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hotel List Search Page')),
        body: GetBuilder<HotelListSearchController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                    itemCount: controller.hotelSearchList.length,
                    itemBuilder: (context, index) => HotelListSearchListItem(
                      hotel: controller.hotelSearchList[index]
                    )));
                    // itemBuilder: (context, index) => AllDataListItem(hotel: controller.hotelList[index])));
          },
        ));
  }
}
