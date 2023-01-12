import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

Dio dio = Dio();

class UserInfo {
  String? username;
  String? password;
  int? age;

  UserInfo();
}

class HomeNotifier extends ChangeNotifier {
  UserInfo? _userInfo = UserInfo();

  UserInfo? get user => _userInfo;

  set user(UserInfo? newValue) {
    _userInfo = newValue;
    notifyListeners();
  }

  /**
   * 获取首页推荐视频
   */
  Future<Response> getRegion() async {
    Response response;
    response = await dio.get(
        "https://api.bilibili.com/x/web-interface/dynamic/region?ps=10&rid=1");
    return response;
  }
}
