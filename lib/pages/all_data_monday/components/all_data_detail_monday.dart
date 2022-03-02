import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllDataDetailMonday extends StatelessWidget {
  final hotel = Get.arguments['hotel'];

  AllDataDetailMonday({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (Text(hotel.name))),
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          Text(hotel.name),
          Text(hotel.conceptName),
          Text(hotel.hotelLocation),
          SizedBox(
            // width: Get.mediaQuery.size.width,
            height: 200,
            child: ListView.builder(
                itemCount: hotel.hotelPropertyProminents.length,
                itemBuilder: (context, index) =>
                    Text(hotel.hotelPropertyProminents[index].description)),
          ),
        ],
      ))),
    );
  }
}
