import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

Dio dio = Dio();

class HomeData {
  List? recommendVideos;

  HomeData();
}

class HomeNotifier extends ChangeNotifier {
  HomeData? _homeData = HomeData();

  HomeData? get home => _homeData;

  set home(HomeData? newValue) {
    _homeData = newValue;
    notifyListeners();
  }

  /**
   * 获取首页推荐视频
   */
  void getRegion() async {
    Response response;
    response = await dio.get(
        "https://api.bilibili.com/x/web-interface/dynamic/region?ps=10&rid=1");
    Map resData = response.data as Map;
    _homeData?.recommendVideos = resData["data"]["archives"] as List?;
  }
}
