import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/model/login_model.dart';
import 'package:untitled5/providers/login_provider.dart';
import 'package:untitled5/services/custom_post_service.dart';

class LoginService {
  Future loginService(
      {required BuildContext context, String? email, String? password}) async {
    Map body = {"email": email, "password": password};

    try {
      var res = await CustomPostService().customPostService(
          context: context,
          body: body,
          url: 'http://199.231.160.216/abc.website.api/api/Security/Login');
      if (res != null) {
        LoginModel loginModel = LoginModel.fromJson(res);
        Provider.of<LoginProvider>(context, listen: false)
            .updateLogin(newLoginModel: loginModel);
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
