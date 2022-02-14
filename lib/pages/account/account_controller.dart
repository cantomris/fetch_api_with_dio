import 'package:fetch_api_using_dio/models/users.dart';
import 'package:fetch_api_using_dio/pages/account/user_provider.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  List<User> userList = [];
  bool isLoading = true;
  bool isSelected = false;

  @override
  void onInit() {
    UserProvider().getUserList(
      onSuccess: (users) {
        userList.addAll(users);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
      }
    );
    super.onInit();
  }

  void changeSelected(){
    isSelected == false ? true : false;
  }
}