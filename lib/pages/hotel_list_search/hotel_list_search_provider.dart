import 'package:fetch_api_using_dio/models/hotel_list_search_model.dart';
import 'package:fetch_api_using_dio/services/hotel_list_search_service.dart';

class HotelListSearchProvider {
  void getAllData({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    HotelListSearchService(url: 'http://192.168.11.159:3001/data', data: null).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          var allData = HotelListSearchModel.fromJson(data);
          onSuccess(allData.results.hotelListCacheModels);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
