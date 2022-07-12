import 'package:flutter/cupertino.dart';
import 'package:untitled5/model/login_model.dart';

class LoginProvider extends ChangeNotifier {
  LoginModel? loginModel;

  updateLogin({LoginModel? newLoginModel}) {
    loginModel = newLoginModel;
    notifyListeners();
  }
}
