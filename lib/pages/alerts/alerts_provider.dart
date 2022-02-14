import 'package:fetch_api_using_dio/models/alerts.dart';
import 'package:fetch_api_using_dio/services/api_request.dart';

class AlertsProvider {
  void getAlertsList({
    Function() beforeSend,
    Function(List<Alerts> posts) onSuccess,
    Function(dynamic error) onError,
}) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/users', data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess((data as List).map((alertJson) => Alerts.fromJson(alertJson)).toList());
      },
      onError: (error) => { if (onError != null) onError(error) }
    );
  }
}