import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelDetailPage extends StatelessWidget {
  const HotelDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Detail')),
      body: GetBuilder<HotelListSearchDetailController>(
        builder: (controller) {
          return LoadingOverlay(
            isLoading: controller.isLoading,
            child: Center(
              child: Column(
                children: [
                const Spacer(),
            Text(controller.hotelDetail.rtData.hotelName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20),
            Text(controller.hotelDetail.rtData.hotelDetail.hotelLocation),
            const SizedBox(height: 20),
            SizedBox(
              // width: Get.mediaQuery.size.width,
              height: 200,
              child: ListView.builder(
                  itemCount: controller.hotelDetail.rtData.hotelPropertyProminentCacheModels.length,
                  itemBuilder: (context, index) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(controller.hotelDetail.rtData.hotelPropertyProminentCacheModels[index].description),
                        ],
                      )),
            ),
            const Spacer(),
            ],
          ),
              // child: Text(controller.hotelDetail.rtData.hotelName),
            ),
          );
        },
      ),
    );
  }
}