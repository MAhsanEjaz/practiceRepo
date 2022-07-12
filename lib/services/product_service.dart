import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/model/product_model.dart';
import 'package:untitled5/providers/product_provider.dart';
import 'package:untitled5/services/custom_get_service.dart';

class ProductService {
  Future productService({required BuildContext context}) async {
    try {
      var res = await CustomGetService().getCustomService(
          context: context, url: 'https://api.storerestapi.com/products');

      if (res != null) {
        ProductModel productModel = ProductModel.fromJson(res);

        Provider.of<ProductProvider>(context, listen: false)
            .updateProducts(newProductProvider: productModel.data);
        return false;
      } else {
        return true;
      }
    } catch (err) {
      print(err);
      return false;
    }
  }
}
