import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alerts_controller.dart';
import 'components/alert_list_item.dart';

class AlertsPage extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alerts')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<AlertsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.alertList.length,
                itemBuilder: (context, index) => Wrap(
                  children: [AlertListItem(
                    alert: controller.alertList[index],
                  )],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
