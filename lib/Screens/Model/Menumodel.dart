class MenuModel {
  String? name;
  String? kalories;
  String? gm;
  String? images;
  String? price;
  String? type;

  MenuModel(
      {this.name, this.kalories, this.gm, this.images, this.price, this.type});

  MenuModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    kalories = json['kalories'];
    gm = json['gm'];
    images = json['images'];
    price = json['price'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['kalories'] = this.kalories;
    data['gm'] = this.gm;
    data['images'] = this.images;
    data['price'] = this.price;
    data['type'] = this.type;
    return data;
  }
}