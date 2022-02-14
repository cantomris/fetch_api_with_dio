import 'package:fetch_api_using_dio/pages/account/components/user_list_item.dart';
import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Container(
        child: GetBuilder<AccountController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.userList.length,
                itemBuilder: (context, index) => Container(
                  child: UserListItem(
                    user: controller.userList[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
