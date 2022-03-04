import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelListSearchDetail extends StatelessWidget {
  final hotel = Get.arguments['hotel'];

  HotelListSearchDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (Text(hotel.name))),
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          const Spacer(),
          Text(hotel.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20),
          Text(hotel.hotelLocation),
          Text(hotel.conceptName),
          const SizedBox(height: 20),
          SizedBox(
            // width: Get.mediaQuery.size.width,
            height: 200,
            child: ListView.builder(
                itemCount: hotel.hotelPropertyProminents.length,
                itemBuilder: (context, index) =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(hotel.hotelPropertyProminents[index].description),
                      ],
                    )),
          ),
          const Spacer(),
        ],
      ))),
    );
  }
}
