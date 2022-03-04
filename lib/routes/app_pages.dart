import 'package:fetch_api_using_dio/middleware/authentication_middleware.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_binding.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_page.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search/components/hotel_list_search_detail.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_binding.dart';
import 'package:fetch_api_using_dio/pages/hotel_list_search_detail/hotel_list_search_detail_page.dart';
import 'package:fetch_api_using_dio/pages/login/login_binding.dart';
import 'package:fetch_api_using_dio/pages/login/login_page.dart';
import 'package:fetch_api_using_dio/pages/posts/components/post_detail.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_bindings.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_page.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.POSTS,
      page: () => PostsPage(),
      binding: PostsBinding(),
    ),
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding(),
        middlewares: [AuthenticationMiddleware()]),
    GetPage(
      name: '${AppRoutes.POSTDETAIL}/:id',
      page: () => PostDetailPage(),
    ),
    GetPage(
        name: '${AppRoutes.HOTELLISTSEARCHHOTELDETAIL}/:id',
        page: () => HotelListSearchDetail()),
    GetPage(
        name: AppRoutes.SEARCHDETAIL,
        page: () => HotelListSearchDetailPage(),
        binding: HotelListSearchDetailBinding())
  ];
}
