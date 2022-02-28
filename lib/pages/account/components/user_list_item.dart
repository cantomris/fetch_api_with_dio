import 'package:fetch_api_using_dio/models/users.dart';
import 'package:fetch_api_using_dio/pages/account/account_controller.dart';
import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListItem extends StatelessWidget {
  final User user;

  const UserListItem({Key key, this.user}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return SizedBox(
      // child: ChoiceChip(
      //   selected: true,
      //   onSelected: (newVal) {
      //     print(user.name + ' ' + user.phone);
      //   },
      //   label: Text(user.username),
      // ),
      child: ElevatedButton(
        onPressed: (){
          // print(user.name + ' ' + user.phone + ' ' + user.email);
          var userArguments = <String, String>{'name': user.name, 'email': user.email, 'phone': user.phone};
          Get.toNamed(AppRoutes.USERPAGE + '/' + user.id.toString(), arguments: userArguments);
        },
        child: Text(user.name),),
    );
  }
}
