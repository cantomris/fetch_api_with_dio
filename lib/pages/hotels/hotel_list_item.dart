import 'package:fetch_api_using_dio/models/test_hotels.dart';
import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelListItem extends StatelessWidget {
  final TestHotels hotel;

  const HotelListItem({Key key, this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 15),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1))
      ]),
      child: Column(
        children: [
          Row(
            children: [
              // ClipOval(
              //   child: Image.network(
              //     hotel.imageUrl,
              //     height: 80,
              //     width: 80,
              //   ),
              // ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(hotel.childInfo, style: TextStyle(fontSize: 13)),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(hotel.title),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.heart, color: Colors.redAccent)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bookmark,
                  )),
              const Spacer(),
              // IconButton(
              //     onPressed: () {}, icon: const Icon(CupertinoIcons.hand_thumbsdown)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.hand_thumbsup,
                      color: Colors.blueAccent)),
              IconButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.HOTELDETAIL + '/' + hotel.id.toString(),
                    arguments: {"hotelname": hotel.name});
                  },
                  icon: const Icon(CupertinoIcons.table_badge_more))
            ],
          )
        ],
      ),
    );
  }
}
