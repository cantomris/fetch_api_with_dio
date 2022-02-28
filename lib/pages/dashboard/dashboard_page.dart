import 'package:fetch_api_using_dio/pages/account/account_page.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_page.dart';
import 'package:fetch_api_using_dio/pages/all_data/all_data_page.dart';
import 'package:fetch_api_using_dio/pages/home/home_page.dart';
import 'package:fetch_api_using_dio/pages/hotels/components/hotel_detail.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_page.dart';
import 'package:fetch_api_using_dio/pages/news/news_page.dart';
import 'package:fetch_api_using_dio/pages/posts/components/post_detail.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_page.dart';
import 'package:fetch_api_using_dio/pages/userpage/userpage.dart';
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
              // HomePage(),
              // NewsPage(),
              PostsPage(),
              AllDataPage(),
              AccountPage(),
              HotelsPage(),
              // UserPage(),
              // PostDetailPage(),
              // HotelDetailPage()
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
            // _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            // _bottomNavigationBarItem(icon: CupertinoIcons.news, label: 'News'),
            _bottomNavigationBarItem(icon: CupertinoIcons.news, label: 'Posts'),
            _bottomNavigationBarItem(icon: CupertinoIcons.bell, label: 'Alerts'),
            _bottomNavigationBarItem(icon: CupertinoIcons.person,  label: 'Account'),
            _bottomNavigationBarItem(icon: CupertinoIcons.building_2_fill,  label: 'Hotels'),
          ],
        ),);
    });
  }
  _bottomNavigationBarItem({IconData icon, String label}){
    return BottomNavigationBarItem(icon: Icon(icon),
    label: label,);
  }
}
