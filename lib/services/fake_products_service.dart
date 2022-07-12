import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/model/fake_model.dart';
import 'package:http/http.dart' as http;
import 'package:untitled5/providers/fake_providefr.dart';

class FakeProductService {
  Future fakeProductsService({required BuildContext context}) async {
    List<FakeStoreModel> model = [];

    try {
      http.Response response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));

      log('responseBody------> ${response.body}');

      if (response.statusCode == 200) {
        var l = response.body;

        jsonDecode(l).forEach((element) {
          model.add(FakeStoreModel.fromJson(element));
        });
        Provider.of<FakeProvider>(context, listen: false)
            .getFakeProducts(newModel: model);
        return true;
      } else {
        return false;
      }
    } catch (err) {
      print(err);
      return false;
    }
  }
}
