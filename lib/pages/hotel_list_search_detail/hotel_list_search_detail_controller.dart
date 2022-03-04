import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_provider.dart';
import 'package:fetch_api_using_dio/services/hotel_list_search_detail_service.dart';
import 'package:get/get.dart';

class HotelListSearchDetailController extends GetxController{
  List hotelSearchList = [];
  // List <HotelListCacheModel> hotelListData = [];
  bool isLoading = true;
  @override
  void onInit() {
    // print('HOTEL DETAIL PAGE DETAIL DETAIL');
    HotelListSearchDetailProvider().getHotelDetail(
        onSuccess: (hotels) {
          // hotelListData = hotelDataMonday.results.hotelListCacheModels;

          // hotelSearchList = hotels as List;
          isLoading = false;
          print('We can get the detail data from API');
          update();
        },
        onError: (error) {
          print('There is something wrong with the detail controller post method => ${error}');
          isLoading = false;
          update();
        });
    super.onInit();
  }
}