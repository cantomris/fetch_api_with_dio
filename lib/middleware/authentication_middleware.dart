import 'package:fetch_api_using_dio/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationMiddleware extends GetMiddleware{
  @override
  // Deger ne kadar yuksekse o kadar oncelikli calisir
  int get priority => 20;

  bool isAuthenticated = true;

  @override
  RouteSettings redirect(String route) {
    if (isAuthenticated == false) {
      return RouteSettings(name: AppRoutes.LOGIN);
    }
  }
// Bu aksiyon herhangi birsey olusturulmadan once cagirilir.
// Birseyleri degistirmek yada farkli bir sayfaya yonlendirmek icin kullanilabilir.
  @override
  GetPage onPageCalled(GetPage page) {
    return super.onPageCalled(page);
  }
  @override
  List<Bindings> onBindingStart(List<Bindings> bindings) {
    return super.onBindingsStart(bindings);
  }
  // Binding ler olusturulduktan sonra ve sayfa olusturulmadan once kullanilabilir
  @override
  GetPageBuilder onPageBuildStart(GetPageBuilder page) {
    return super.onPageBuildStart(page);
  }
// Sayfa yapilandirmasi ve goruntulenmesi icin kullanilir
  @override
  Widget onPageBuilt(Widget page) {
    return super.onPageBuilt(page);
  }
// Bu aksiyon sayfanin tum aksiyonlari ve ilgili objeleri elden cikarildiktan sonra kullanilir
  @override
  void onPageDispose() {
    // TODO: implement onPageDispose
    super.onPageDispose();
  }
}