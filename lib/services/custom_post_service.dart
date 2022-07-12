import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CustomPostService {
  Future customPostService(
      {required BuildContext context, Map? body, String? url}) async {
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    try {
      http.Response response = await http.post(Uri.parse(url!),
          body: json.encode(body), headers: headers);

      var jsonDecode = json.decode(response.body);

      if (jsonDecode['status'] == null || jsonDecode['status'] != null) {
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
