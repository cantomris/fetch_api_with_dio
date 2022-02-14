import 'package:fetch_api_using_dio/pages/account/account_controller.dart';
import 'package:fetch_api_using_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_using_dio/pages/home/components/custom_stepper.dart';
import 'package:fetch_api_using_dio/pages/home/components/stepper_list_item.dart';
import 'package:fetch_api_using_dio/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.title)),
      body: Container(
          child: Center(
        child: CustomStepper(),
      )),
    );
  }
}
