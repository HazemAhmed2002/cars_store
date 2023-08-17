import 'package:cars_store/services/api/api_path.dart';
import 'package:cars_store/services/api/dio_helpers.dart';
import 'package:dio/dio.dart';

class MainController {
  static Future<Response> getHome() {
    return DioHelper().get(ApiPath.getHome);
  }
}
