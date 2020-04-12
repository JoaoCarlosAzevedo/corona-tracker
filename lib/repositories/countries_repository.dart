import 'package:corona_tracker/models/global.dart';
import 'package:dio/dio.dart';
import 'package:corona_tracker/API/api_config.dart' as API;
import 'package:corona_tracker/models/country.dart';
import 'dart:async';

abstract class CountriesRepository {
  Future<Country> fetchCountry(String country);
  Future<List<Country>> fetchAllCountries(); 
  Future<Global> fetchGlobalData();

}

class ConnectionCountrieslRepository implements CountriesRepository {

  @override
  Future<Country> fetchCountry(String country) async {

    try{ 
    Response response = await Dio().get(API.http_api+"countries/$country");

    var globalData = new Country.fromJson(response.data);

    return globalData; 

    }catch(error) {
      print("Error $error");

      return null;
    }
   
  } 
  
  @override
  Future<Global> fetchGlobalData() async {

    try{ 
    Response response = await Dio().get(API.http_api+"all/");

    var globalData = new Global.fromJson(response.data);

    return globalData; 

    }catch(error) {
      print("Error $error");

      return null;
    }
   
  } 

  @override
  Future<List<Country>> fetchAllCountries() async {

    try {
      Response response = await Dio().get(API.http_api+"countries/");
      List responseJson = response.data;

      return responseJson.map((m) => new Country.fromJson(m)).toList();
    }catch(error) {
 
      print("Error $error"); 

      return null;
    }
  } 

}