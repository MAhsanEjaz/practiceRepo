class FakeStoreModel {
  int? id;
  String? title;

  // double? price;
  String? description;
  String? category;
  String? image;
  int quantity = 1;
  Rating? rating;

  FakeStoreModel(
      {this.id,
      this.title,
      // this.price,
      this.description,
      this.category,
      this.quantity = 1,
      this.image,
      this.rating});

  FakeStoreModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    // price = json['price'];
    description = json['description'];
    quantity = json['quantity'] ?? 0;
    category = json['category'];
    image = json['image'];
    rating =
        json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    // data['price'] = this.price;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['category'] = this.category;
    data['image'] = this.image;
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    return data;
  }
}

class Rating {
  // double? rate;
  int? count;

  Rating({this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    // rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}
