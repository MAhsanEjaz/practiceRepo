import 'package:flutter/cupertino.dart';

import '../model/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductData>? productProvider = [];

  updateProducts({List<ProductData>? newProductProvider}) {
    productProvider = newProductProvider;
    notifyListeners();
  }
}
