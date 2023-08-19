import 'package:cars_store/models%20api/brands_model.dart';
import 'package:cars_store/services/api/repo/main_repo.dart';
import 'package:cars_store/view/brand/brand_details_screen.dart';
import 'package:countries_utils/countries.dart';
import 'package:countries_utils/models/country.dart';
import 'package:get/get.dart';

class BrandConrtoller extends GetxController {
  List<Country> countries = Countries.all();
  List<String> countriesName = ['w'];

  @override
  void onInit() {
    getCarsData();
    // TODO: implement onInit
    super.onInit();
  }

  BrandsModel brandsModel = BrandsModel();
  bool isLoading = false;
  getCarsData() async {
    isLoading = true;
    update();
    brandsModel = await MainRepo().getBrandModel();
    isLoading = false;
    update();
  }

  @override
  void onReady() {
    countriesList();
    super.onReady();
  }

  List<CountryLists> item = [];
  void countriesList() {
    countriesName = [];

    for (var element in countries) {
      countriesName.add(element.name ?? "");
      update();
    }
    item = countriesName.map((e) => CountryLists(title: e, tag: e[0])).toList();
    print(countriesName.length);
    update();
  }
}

// class LocationController extends GetxController {
//   List<Country> countries = Countries.all();
//   List<String> countriesName = ['w'];

//   @override
//   void onReady() {
//     countriesList();
//     super.onReady();
//   }

//   List<CountryLists> item = [];
//   void countriesList() {
//     countriesName = [];

//     for (var element in countries) {
//       countriesName.add(element.name ?? "");
//       update();
//     }
//     item = countriesName.map((e) => CountryLists(title: e, tag: e[0])).toList();
//     print(countriesName.length);
//     update();
//   }
// }
