import 'package:cars_store/models/home_model.dart';
import 'package:cars_store/services/api/repo/main_repo.dart';
import 'package:get/get.dart';

class HomeConrtoller extends GetxController {
  @override
  void onInit() {
    getHomeData();
    // TODO: implement onInit
    super.onInit();
  }

  HomeModel homeModel = HomeModel();
  bool isLoading = false;
  getHomeData() async {
    isLoading = true;
    update();
    homeModel = await MainRepo().getHomeModel();
    isLoading = false;
    update();
  }
}
