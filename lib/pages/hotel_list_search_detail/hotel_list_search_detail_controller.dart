import 'package:fetch_api_using_dio/models/hotel_detail_model.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_provider.dart';
import 'package:fetch_api_using_dio/services/hotel_list_search_detail_service.dart';
import 'package:get/get.dart';

class HotelListSearchDetailController extends GetxController{
  Results hotelDetail;
  bool isLoading = true;
  int hotelID;
  @override
  void onInit() {
    HotelListSearchDetailProvider(hotelDetail.rtData.hotelId).getHotelDetail(
        onSuccess: (hotel) {
          hotelDetail = hotel;
          isLoading = false;
          print('We can get the detail data from API $hotel');
          update();
        },
        onError: (error) {
          print('There is something wrong HOTEL DETAIL controller => $error');
          // isLoading = false;
          update();
        });
    super.onInit();
  }
}