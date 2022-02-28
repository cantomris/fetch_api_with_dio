import 'package:fetch_api_using_dio/middleware/authentication_middleware.dart';
import 'package:fetch_api_using_dio/pages/account/account_binding.dart';
import 'package:fetch_api_using_dio/pages/account/account_page.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_binding.dart';
import 'package:fetch_api_using_dio/pages/alerts/alerts_page.dart';
import 'package:fetch_api_using_dio/pages/all_data/all_data_binding.dart';
import 'package:fetch_api_using_dio/pages/all_data/all_data_page.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_binding.dart';
import 'package:fetch_api_using_dio/pages/dashboard/dashboard_page.dart';
import 'package:fetch_api_using_dio/pages/home/home_binding.dart';
import 'package:fetch_api_using_dio/pages/home/home_page.dart';
import 'package:fetch_api_using_dio/pages/hotels/components/hotel_detail.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_binding.dart';
import 'package:fetch_api_using_dio/pages/hotels/hotels_page.dart';
import 'package:fetch_api_using_dio/pages/login/login_binding.dart';
import 'package:fetch_api_using_dio/pages/login/login_page.dart';
import 'package:fetch_api_using_dio/pages/news/news_binding.dart';
import 'package:fetch_api_using_dio/pages/news/news_page.dart';
import 'package:fetch_api_using_dio/pages/posts/components/post_detail.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_bindings.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_page.dart';
import 'package:fetch_api_using_dio/pages/userpage/userpage.dart';
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
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding()
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
        middlewares: [AuthenticationMiddleware()]
    ),
    GetPage(
      name: AppRoutes.ALLDATAPAGE,
      page: () => AllDataPage(),
      binding: AllDataBinding(),
    ),
    GetPage(
      name: AppRoutes.HOTELS,
      page: () => HotelsPage(),
      binding: HotelBinding(),
    ),
    GetPage(
      name: '${AppRoutes.USERPAGE}/:id',
      page: () => UserPage()
    ),
    GetPage(
      name: '${AppRoutes.POSTDETAIL}/:id',
      page: () => PostDetailPage(),
    ),
    GetPage(
      name: '${AppRoutes.HOTELDETAIL}/:id',
      page: () => HotelDetailPage(),
    ),
  ];
}
