import 'package:fetch_api_using_dio/pages/unknown_route.dart';
import 'package:fetch_api_using_dio/routes/app_pages.dart';
import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:fetch_api_using_dio/pages/posts/posts_bindings.dart';
import 'package:fetch_api_using_dio/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // getPages: [
      //   GetPage(name: '/home', page: () => MyHomePage()),
      //   GetPage(name: '/posts', page: () => PostsPage(), binding: PostsBinding())
      // ],
      darkTheme: AppThemes.dark,
      // theme: AppThemes.light,
      themeMode: ThemeMode.system,
      getPages: AppPages.list,
      initialRoute: AppRoutes.DASHBOARD,
      unknownRoute: GetPage(name: '/unknownRoute', page: () => UnknownRoute()),
      // home: MyHomePage(),
    );
  }
}
