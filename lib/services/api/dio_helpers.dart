import 'package:dio/dio.dart';

Dio DioHelper() {
  Dio dio = Dio();
  dio.options.connectTimeout = const Duration(milliseconds: 7000);
  dio.options.baseUrl = "https://cars-api.ameerabunada.com/api/v1/";
  dio.options.headers = {
    "Accept": "application/json",
  };

  return dio;
}
