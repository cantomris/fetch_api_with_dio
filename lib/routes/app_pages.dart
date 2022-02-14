import 'package:fetch_api_using_dio/pages/account/account_binding.dart';
import 'package:fetch_api_using_dio/pages/account/account_page.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_binding.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_page.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_binding.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_page.dart';
import 'package:fetch_api_using_dio/pages/home/home_binding.dart';
import 'package:fetch_api_using_dio/pages/home/home_page.dart';
import 'package:fetch_api_using_dio/pages/hotel/hotel_binding.dart';
import 'package:fetch_api_using_dio/pages/hotel/hotel_page.dart';
import 'package:fetch_api_using_dio/pages/news/news_binding.dart';
import 'package:fetch_api_using_dio/pages/news/news_page.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_bindings.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_page.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: AppRoutes.POSTS,
      page: () => PostsPage(),
      binding: PostsBinding(),
    ),
    GetPage(
      name: AppRoutes.NEWS,
      page: () => NewsPage(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.ALERTS,
      page: () => AlertsPage(),
      binding: AlertsBinding(),
    ),
    GetPage(
      name: AppRoutes.ALERTS,
      page: () => AlertsPage(),
      binding: AlertsBinding(),
    ),
    GetPage(
      name: AppRoutes.HOTELS,
      page: () => HotelPage(),
      binding: HotelBinding(),
    ),
  ];
}
