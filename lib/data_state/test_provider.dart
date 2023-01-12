import 'package:flutter/cupertino.dart';

class UserInfo {
  String? username;
  String? password;
  int? age;

  UserInfo();
}

class UserNotifier extends ChangeNotifier{
  UserInfo? _userInfo =  UserInfo();
  UserInfo? get user => _userInfo;

  set user(UserInfo? newValue) {
    _userInfo = newValue;
    notifyListeners();
  }
}