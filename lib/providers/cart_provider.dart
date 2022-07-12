import 'package:flutter/cupertino.dart';
import 'package:untitled5/model/cart_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> model = [];

  addToCart({CartModel? newModel}) {
    for (int i = 0; i < model.length; i++) {
      if (model[i].fakeStoreModel!.id == newModel!.fakeStoreModel!.id) {
        model[i].fakeStoreModel!.quantity++;
        notifyListeners();
        return;
      } else {
        notifyListeners();
      }
    }
    model.add(newModel!);
    notifyListeners();
  }
}
