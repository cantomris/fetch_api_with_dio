import 'package:fetch_api_using_dio/pages/hotel/hotel_provider.dart';
import 'package:get/get.dart';

class HotelController extends GetxController {
  bool isLoading = true;
  @override
  void onInit() {
    HotelProvider().getHotelList(
      beforeSend: (){
        print('Getting the data');
      },
      onSuccess: () {
        print('Request is successful');
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        print('error');
        update();
      }
    );
    super.onInit();
  }
}
