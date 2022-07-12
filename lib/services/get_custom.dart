import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:untitled5/model/fake_model.dart';
import 'package:untitled5/providers/fake_providefr.dart';

class GetCustom {
  Future getRequest({required BuildContext context, String? url}) async {
    try {
      http.Response response = await http.get(Uri.parse(url!));

      var jsonDecode = json.decode(response.body);

      if (response.statusCode != 200) {
        return null;
      } else {
        return jsonDecode;
      }
    } catch (err) {
      print(err);
    }
  }
}

class HotService {
  Future getHotService({required BuildContext context}) async {
    List<FakeStoreModel> model = [];

    try {
      http.Response response = await http.get(Uri.parse(''));

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
