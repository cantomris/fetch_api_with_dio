import 'package:fetch_api_using_dio/models/hotel_list_search_model.dart';
import 'package:fetch_api_using_dio/services/hotel_list_search_service.dart';

class HotelListSearchProvider {
  var body = {
    "category_id": -1,
    "location_id": -1,
    "options": {
      "tab_id": "1",
      "Link": "/yurt-ici-oteller",
      "Event_Name": "Location",
      "More_Hotels": false,
      "Filter_Data": {
        "Page_Number": 0
      }
    }
  };
  void getAllData({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    HotelListSearchService(url: 'https://apiacente.gezinomi.com/hotel-list/search?', data: body).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          var allData = HotelListSearchModel.fromJson(data);
          print('Hotel data from controller ${allData.data.results.hotelListCacheModels[0].name}');
          onSuccess(allData.data.results.hotelListCacheModels);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
