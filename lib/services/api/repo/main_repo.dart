import 'package:cars_store/models%20api/brands_model.dart';
import 'package:cars_store/models%20api/car_model.dart';
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
    } on DioException catch (e) {
      if (e.response!.statusCode != 200) {
        print("$e ========== ${homeData.message}");
      }
    }
    return homeData;
  }

  Future<CarModel> getCarModel() async {
    CarModel carModel = CarModel();
    Response response = await MainController.getCar();
    try {
      if (response.statusCode == 200) {
        carModel = CarModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response!.statusCode != 200) {
        print("$e ########### ${carModel.message}");
      }
    }
    return carModel;
  }

  Future<BrandsModel> getBrandModel() async {
    BrandsModel brandsModel = BrandsModel();
    Response response = await MainController.getBrands();
    try {
      if (response.statusCode == 200) {
        brandsModel = BrandsModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response!.statusCode != 200) {
        print("$e *********** ${brandsModel.message}");
      }
    }
    return brandsModel;
  }
}
