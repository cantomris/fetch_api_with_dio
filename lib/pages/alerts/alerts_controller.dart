import 'package:fetch_api_using_dio/models/alerts.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_provider.dart';
import 'package:get/get.dart';

class AlertsController extends GetxController{
  List<Alerts> alertList = [];
  bool isLoading = true;

  @override
  void onInit() {
    AlertsProvider().getAlertsList(
      onSuccess: (alerts) {
        alertList.addAll(alerts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
      }
    );
    super.onInit();
  }
}