import 'package:dio/dio.dart';
import 'package:corona_tracker/models/global.dart';
import 'package:corona_tracker/API/api_config.dart' as API;

import 'dart:async';

abstract class GlobalRepository {
  Future<Global> fechGlobalData();
}

class ConnectionGlobalRepository implements GlobalRepository {

  @override
  Future<Global> fechGlobalData() async {
    try {
      Response response = await Dio().get(API.http_api+"all/");
      var globalData = new Global.fromJson(response.data);
      return globalData;
    }catch(error) {
      print("Error $error");
      return null;
    }
  } 
}
