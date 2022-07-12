class ProductModel {
  List<ProductData>? data;
  int? status;
  String? message;

  ProductModel({this.data, this.status, this.message});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ProductData>[];
      json['data'].forEach((v) {
        data!.add(new ProductData.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class ProductData {
  String? sId;
  String? title;
  int? price;
  Category? category;
  String? description;
  CreatedBy? createdBy;
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? image;

  ProductData(
      {this.sId,
        this.title,
        this.price,
        this.category,
        this.description,
        this.createdBy,
        this.createdAt,
        this.updatedAt,
        this.slug,
        this.image});

  ProductData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    price = json['price'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    description = json['description'];
    createdBy = json['createdBy'] != null
        ? new CreatedBy.fromJson(json['createdBy'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    slug = json['slug'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['price'] = this.price;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['description'] = this.description;
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['slug'] = this.slug;
    data['image'] = this.image;
    return data;
  }
}

class Category {
  String? sId;
  String? name;
  String? slug;

  Category({this.sId, this.name, this.slug});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}

class CreatedBy {
  String? role;
  String? sId;
  String? name;

  CreatedBy({this.role, this.sId, this.name});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}
