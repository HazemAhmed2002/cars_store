import 'package:dio/dio.dart';

class ApiHelper {
  static Dio? dio;

  static inti() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://cars-api.ameerabunada.com/api/v1",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> post_data(
      {required String method,
      required Map<String, dynamic>? data,
      String? lang = "en",
      String? toaken}) async {
    dio!.options.headers = {
      "lang": "$lang",
      "Authorization": toaken ?? '',
      "Content-Type": "application/json",
    };
    return await dio?.post(method, data: data);
  }

  static Future<Response?> get_data({
    required String method,
    Map<String, dynamic>? data,
  }) async {
    dio!.options.headers = {
      "Accept": "application/json",
    };
    return await dio?.get(method);
  }

  static Future<Response?> put_data(
      {required String method,
      required Map<String, dynamic>? data,
      String? lang = "en",
      String? toaken}) async {
    dio!.options.headers = {
      "lang": "$lang",
      "Authorization": toaken ?? '',
      "Content-Type": "application/json",
    };
    return await dio?.put(method, data: data);
  }
}
