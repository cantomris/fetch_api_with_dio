import 'package:fetch_api_using_dio/pages/all_data/all_data_controller.dart';
import 'package:fetch_api_using_dio/pages/all_data/components/all_data_list_item.dart';
import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotel_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllDataPage extends StatelessWidget {
  const AllDataPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('All Data Page')),
        body: Container(child: GetBuilder<AllDataController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                    itemCount: controller.hotelList.length,
                    itemBuilder: (context, index) => Text('Hotel')));
                    // itemBuilder: (context, index) => AllDataListItem(hotel: controller.hotelList[index])));
          },
        )));
  }
}
