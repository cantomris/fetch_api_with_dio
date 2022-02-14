import 'package:fetch_api_using_dio/models/alerts.dart';
import 'package:flutter/material.dart';

class AlertListItem extends StatelessWidget {
  final Alerts alert;
  const AlertListItem({Key key, this.alert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(alert.name));
  }
}
