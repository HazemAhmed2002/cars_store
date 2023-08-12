class DioModel {
  bool? status;
  String? message;
  Data? data;

  DioModel({this.status, this.message, this.data});

  DioModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Sliders>? sliders;
  List<Brands>? brands;
  List<Cars>? cars;

  Data({this.sliders, this.brands, this.cars});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(Sliders.fromJson(v));
      });
    }
    if (json['brands'] != null) {
      brands = <Brands>[];
      json['brands'].forEach((v) {
        brands!.add(Brands.fromJson(v));
      });
    }
    if (json['cars'] != null) {
      cars = <Cars>[];
      json['cars'].forEach((v) {
        cars!.add(Cars.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sliders != null) {
      data['sliders'] = sliders!.map((v) => v.toJson()).toList();
    }
    if (brands != null) {
      data['brands'] = brands!.map((v) => v.toJson()).toList();
    }
    if (cars != null) {
      data['cars'] = cars!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sliders {
  int? id;
  String? image;
  String? title;

  Sliders({this.id, this.image, this.title});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class Brands {
  int? id;
  String? name;
  String? logo;

  Brands({this.id, this.name, this.logo});

  Brands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['logo'] = logo;
    return data;
  }
}

class Cars {
  int? id;
  String? name;
  String? image;
  int? price;
  int? stars;
  int? ratingsCount;
  String? enginePower;
  String? maxTorque;
  String? acceleration;
  Brands? brand;

  Cars(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.stars,
      this.ratingsCount,
      this.enginePower,
      this.maxTorque,
      this.acceleration,
      this.brand});

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    brand = json['brand'] != null ? Brands.fromJson(json['brand']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['stars'] = stars;
    data['ratings_count'] = ratingsCount;
    data['engine_power'] = enginePower;
    data['max_torque'] = maxTorque;
    data['acceleration'] = acceleration;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    return data;
  }
}
