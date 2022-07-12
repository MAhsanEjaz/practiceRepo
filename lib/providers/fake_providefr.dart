import 'package:flutter/cupertino.dart';
import 'package:untitled5/model/fake_model.dart';

class FakeProvider extends ChangeNotifier {
  List<FakeStoreModel>? model = [];

  getFakeProducts({List<FakeStoreModel>? newModel}) {
    model = newModel;
    notifyListeners();
  }
}
