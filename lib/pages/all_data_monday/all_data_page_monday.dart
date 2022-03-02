import 'package:fetch_api_using_dio/pages/all_data/all_data_controller.dart';
import 'package:fetch_api_using_dio/pages/all_data/components/all_data_list_item.dart';
import 'package:fetch_api_using_dio/pages/all_data_monday/all_data_controller_monday.dart';
import 'package:fetch_api_using_dio/pages/all_data_monday/components/all_data_list_item_monday.dart';
import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotel_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllDataPageMonday extends StatelessWidget {
  const AllDataPageMonday({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('All Data Page')),
        body: Container(child: GetBuilder<AllDataControllerMonday>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                    itemCount: controller.hotelDataListMonday.length,
                    itemBuilder: (context, index) => AllDataListItemMonday(
                      hotel: controller.hotelDataListMonday[index]
                    )));  
                    // itemBuilder: (context, index) => AllDataListItem(hotel: controller.hotelList[index])));
          },
        )));
  }
}
