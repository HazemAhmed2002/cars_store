import 'package:cars_store/models%20api/brands_model.dart';
import 'package:cars_store/models%20api/car_model.dart';
import 'package:cars_store/services/api/repo/main_repo.dart';
import 'package:get/get.dart';

class ShowBrandConrtoller extends GetxController {
  @override
  void onInit() {
    getCarsData();
    // TODO: implement onInit
    super.onInit();
  }

  CarModel carModel = CarModel();
  bool isLoading = false;
  getCarsData() async {
    isLoading = true;
    update();
    carModel = await MainRepo().getCarModel();
    isLoading = false;
    update();
  }

  // BrandsModel brandsModel = BrandsModel();
  // bool isLoading = false;
  // getBrandData() async {
  //   isLoading = true;
  //   update();
  //   brandsModel = await MainRepo().getBrandModel();
  //   isLoading = false;
  //   update();
  // }
}
