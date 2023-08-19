import 'package:cars_store/models%20api/car_model.dart';
import 'package:cars_store/services/api/repo/main_repo.dart';
import 'package:get/get.dart';

class BuyCarConrtoller extends GetxController {
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
}
