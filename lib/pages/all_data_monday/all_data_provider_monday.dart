import 'package:fetch_api_using_dio/models/hotel_data_model_monday.dart';
import 'package:fetch_api_using_dio/models/hotel_item_model.dart';
import 'package:fetch_api_using_dio/models/hotel_list_cache_model_monday.dart';
import 'package:fetch_api_using_dio/models/price_model.dart';
import 'package:fetch_api_using_dio/services/all_data_api_request.dart';
import 'package:fetch_api_using_dio/services/all_data_api_request_monday.dart';
import 'package:fetch_api_using_dio/services/test_api_request.dart';
import 'package:fetch_api_using_dio/models/all_data_model.dart';

class AllDataProviderMonday {
  void getAllData({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    AllDataApiRequestMonday(url: 'http://192.168.11.159:3001/data', data: null).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          var allData = HotelDataModelMonday.fromJson(data);
          onSuccess(allData.results.hotelListCacheModels);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
