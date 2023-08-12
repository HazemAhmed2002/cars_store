import 'package:cars_store/helper/api/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  getHomeData() {
    ApiHelper.get_data(method: "/home");
  }
}
