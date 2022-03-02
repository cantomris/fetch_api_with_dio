import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllDataListItemMonday extends StatelessWidget {
  final hotel;
  const AllDataListItemMonday({Key key, this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: (){
          var arguments = {"hotel": hotel};
          Get.toNamed(AppRoutes.MONDAYHOTELSDETAIL + '/' + hotel.id.toString(), arguments: arguments);
        },
        child: Card(
            child: Container(
              width: Get.mediaQuery.size.width,
              height: 100,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(hotel.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 6,),
                Text(hotel.hotelLocation),
              ],)),
            )),
      )
    );
  }
}
