import 'package:fetch_api_using_dio/models/users.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
final User user;

  const AlertBox({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget _box = Padding(padding: EdgeInsets.all(10),
    child: Text(user.name),);
  }
}
