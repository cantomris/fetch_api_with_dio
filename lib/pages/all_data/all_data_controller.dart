import 'package:fetch_api_using_dio/models/all_data_model.dart';
import 'package:fetch_api_using_dio/pages/all_data/all_data_provider.dart';
import 'package:get/get.dart';

class AllDataController extends GetxController{
  dynamic allDataObject;
  List hotelList = [];
  bool isLoading = true;
  @override
  void onInit() {
    AllDataProvider().getAllData(
        onSuccess: (allData) {
          // allDataList.addAll(allData);
          allDataObject = allData;
          var hotelIterations = allData['results']['hotel_list_cache_models'];
          hotelList.addAll(hotelIterations);
          isLoading = false;
          print('All data has been return Success ${hotelList}');
          update();
        },
        onError: (error) {
          print('There is something wrong with the data controller get method ${error}');
          isLoading = false;
          update();
        });
    super.onInit();
  }
}