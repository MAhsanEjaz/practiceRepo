import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/model/cart_model.dart';
import 'package:untitled5/model/fake_model.dart';

import '../providers/cart_provider.dart';

class AddToCartService {
 static Future<bool> cartService(
      {required BuildContext context, FakeStoreModel? fakeStoreModel}) async {
    CartModel cartModel = CartModel(fakeStoreModel: fakeStoreModel);
    Provider.of<CartProvider>(context, listen: false)
        .addToCart(newModel: cartModel);

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${fakeStoreModel!.category} add in cart')));
    return true;
  }
}
