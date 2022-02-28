import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotel_list_item.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels Page'),),
      body: Container(
        child: GetBuilder<HotelsController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                  itemCount: controller.hotelsList.length,
                  // itemBuilder: (context, index) => NewWidget(),));
                  itemBuilder: (context, index) => HotelListItem(hotel: controller.hotelsList[index]),));
          },
        ),
      )
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Hotel Page');
  }
}
