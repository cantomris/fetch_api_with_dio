import 'package:fetch_api_using_dio/models/hotel_data_model_monday.dart';
import 'package:fetch_api_using_dio/pages/all_data_monday/all_data_provider_monday.dart';
import 'package:get/get.dart';

class AllDataControllerMonday extends GetxController{
  List <HotelListCacheModel> hotelDataListMonday = [];
  // List <HotelListCacheModel> hotelListData = [];
  bool isLoading = true;
  @override
  void onInit() {
    AllDataProviderMonday().getAllData(
        onSuccess: (hotels) {
          // hotelListData = hotelDataMonday.results.hotelListCacheModels;

          hotelDataListMonday = hotels as List;
          isLoading = false;
          print('All data monday has been return Success');
          update();
        },
        onError: (error) {
          print('There is something wrong with the _monday controller get method ${error}');
          isLoading = false;
          update();
        });
    super.onInit();
  }
}