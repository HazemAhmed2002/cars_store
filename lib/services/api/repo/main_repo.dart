import 'package:cars_store/models%20api/home_model.dart';
import 'package:cars_store/services/api/controller/main_controller.dart';
import 'package:dio/dio.dart';

class MainRepo {
  Future<HomeModel> getHomeModel() async {
    HomeModel homeData = HomeModel();
    Response response = await MainController.getHome();
    try {
      if (response.statusCode == 200) {
        homeData = HomeModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      if (e.response!.statusCode != 200) {
        print("$e ====== ${homeData.message}");
      }
    }
    return homeData;
  }
}
