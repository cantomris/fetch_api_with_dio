import 'package:fetch_api_using_dio/models/hotel_list_search_model.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search/hotel_list_search_provider.dart';
import 'package:get/get.dart';

class HotelListSearchController extends GetxController{
  List <HotelListCacheModel> hotelSearchList = [];
  // List <HotelListCacheModel> hotelListData = [];
  bool isLoading = true;
  @override
  void onInit() {
    HotelListSearchProvider().getAllData(
        onSuccess: (hotels) {
          // hotelListData = hotelDataMonday.results.hotelListCacheModels;

          hotelSearchList = hotels as List;
          isLoading = false;
          print('Hotel List Search data has been success');
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