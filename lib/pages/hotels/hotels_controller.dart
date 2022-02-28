import 'package:fetch_api_using_dio/models/test_hotels.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_provider.dart';
import 'package:get/get.dart';

class HotelsController extends GetxController {
  List<TestHotels> hotelsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    HotelsProvider().getHotelList(
      // beforeSend: (){
      //   print('Getting the data');
      // },
      onSuccess: (hotels) {
        hotelsList.addAll(hotels);
        isLoading = false;
        // print('Request is successful');
        update();
      },
      onError: (error) {
        isLoading = false;
        print('error has been occurred in hotels_controller get method');
        print('error has been occurred in hotels_controller get method ${error}');
        update();
      }
    );
    super.onInit();
  }
}
