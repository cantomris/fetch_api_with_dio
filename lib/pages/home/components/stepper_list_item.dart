import 'package:fetch_api_using_dio/models/users.dart';
import 'package:flutter/material.dart';

class StepperListItem extends StatelessWidget {
  final User user;

  const StepperListItem({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Step(
        title: Text(user.name),
        content: Text(user.phone),
    );
  }
}
