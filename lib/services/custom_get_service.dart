import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CustomGetService {
  Future getCustomService({required BuildContext context, String? url}) async {
    try {
      http.Response response = await http.get(Uri.parse(url!));

      log('bodyResponse--------> ${response.body}');

      var jsonDecode = json.decode(response.body);

      if (response == 200) {
        return null;
      } else {
        return jsonDecode;
      }
    } catch (err) {
      print(err);
      return null;
    }
  }
}
