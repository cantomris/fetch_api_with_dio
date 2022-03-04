import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelListSearchListItem extends StatelessWidget {
  final hotel;

  const HotelListSearchListItem({Key key, this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        var arguments = {"hotel": hotel};
        Get.toNamed(AppRoutes.HOTELLISTSEARCHHOTELDETAIL + '/' + hotel.id.toString(),
            arguments: arguments);
      },
      // width: Get.mediaQuery.size.width,
      // height: 100,
      child: SizedBox(
        width: Get.width,
        height: Get.height / 2.5,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://picsum.photos/100/100?random=${hotel.id}'),),
            const SizedBox(height: 16,),
            Text(
              hotel.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(hotel.hotelLocation),
          ],
        )),
      ),
    ));
  }
}
