import 'package:countries_utils/countries.dart';
import 'package:countries_utils/models/country.dart';
import 'package:get/get.dart';
import '../modules/countries_utils.dart';

class LocationController extends GetxController {
  List<Country> countries = Countries.all();
  List<String> countriesName = ['w'];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    countriesList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<CountryLists> item = [];
  void countriesList() {
    countriesName = [];

    countries.forEach((element) {
      countriesName.add(element.name ?? "");
      update();
    });
    item = countriesName.map((e) => CountryLists(title: e, tag: e[0])).toList();
    print(countriesName.length);
    update();
  }
}
