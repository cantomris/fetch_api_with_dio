import 'package:fetch_api_using_dio/models/users.dart';
import 'package:fetch_api_using_dio/services/api_request.dart';

class UserProvider {
  void getUserList({
    Function() beforeSend,
    Function(List<User> user) onSuccess,
    Function(dynamic error) onError,
}){
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/users', data: null).get(
      beforeSend: () => { if (beforeSend != null) beforeSend() },
      onSuccess: (data) {
        onSuccess((data).map((userJson) => User.fromJson(userJson)).toList());
      },
      onError: (error) => { if(onError != null) onError(error) }
    );
  }
}