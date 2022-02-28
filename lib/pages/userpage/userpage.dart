import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UserPage')),
      body: Expanded(
        // width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('UserPage'),
          Text('${Get.arguments['name']}'),
          Text('User ID : ${Get.parameters['id']}'),
        ],),
      ),
    );
  }
}
