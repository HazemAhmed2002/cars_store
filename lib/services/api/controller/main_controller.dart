import 'package:cars_store/services/api/api_path.dart';
import 'package:cars_store/services/api/dio_helpers.dart';
import 'package:dio/dio.dart';

class MainController {
  static Future<Response> getHome() {
    return DioHelper().get(ApiPath.getHome);
  }

  static Future<Response> getCar() {
    return DioHelper().get(ApiPath.getCar);
  }

  static Future<Response> getSliders() {
    return DioHelper().get(ApiPath.getSliders);
  }

  static Future<Response> getBrands() {
    return DioHelper().get(ApiPath.getBrands);
  }
}
