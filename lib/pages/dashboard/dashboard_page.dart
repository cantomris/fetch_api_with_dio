import 'package:fetch_api_using_dio/pages/hotel_list_search/hotel_list_search_page.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_page.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              PostsPage(),
              HotelListSearchPage(),
              HotelListSearchDetailPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blueAccent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottomNavigationBarItem(icon: CupertinoIcons.news, label: 'Posts'),
            _bottomNavigationBarItem(icon: CupertinoIcons.bell, label: 'Alerts'),
            _bottomNavigationBarItem(icon: CupertinoIcons.person,  label: 'Account'),
          ],
        ),);
    });
  }
  _bottomNavigationBarItem({IconData icon, String label}){
    return BottomNavigationBarItem(icon: Icon(icon),
    label: label,);
  }
}
