import 'package:fetch_api_using_dio/models/price_model.dart';
import 'package:fetch_api_using_dio/services/all_data_api_request.dart';
import 'package:fetch_api_using_dio/services/test_api_request.dart';
import 'package:fetch_api_using_dio/models/all_data_model.dart';

class AllDataProvider {
  void getAllData({
    Function() beforeSend,
    Function(dynamic allData) onSuccess,
    Function(dynamic error) onError,
  }) {
    AllDataApiRequest(url: 'http://192.168.11.159:3001/data', data: null).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
        //  Map<String, dynamic> newData = new Map<String, dynamic>();
        //  newData = data;
        // // var allData = AllDataModel.fromJson(data);
        //
        //   print('NOTHING IS SOMETHING WORTH DOING ${newData}');
        //

          onSuccess(data);
          // var allDataJson = data;
          // AllDataModel allData = allDataJson.map((dataJson) => AllDataModel.fromJson(dataJson));
          // onSuccess(allData);
          //onSuccess((data).cast<String, AllDataModel>((allDataJson) => AllDataModel.fromJson(allDataJson)));
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
