import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lanceapi/repository/login_repository/login_repository.dart';
import 'package:lanceapi/resources/utils/utils.dart';
import 'package:lanceapi/veiw/home_screen/user_list.dart';
import 'package:lanceapi/veiw/login_screen/login_screen.dart';

class LoginController extends GetxController {
  final _api = LoginReprosotory();

  final emailController = TextEditingController().obs;

  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocsNode = FocusNode().obs;
  final RxBool loading = false.obs;
  void isLogin() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBarTop('Login',
            "your entered username is not avaiable here please enter the valid username.");
      } else {
        Get.to(UserList());
        Utils.snackBarTop(
            'Login',
            'You have Logged in into your device successifully ' +
                emailController.value.text);
      }
    }).onError((error, stackTrace) {
      // ignore: avoid_print
      print(error.toString());
      Utils.snackBarBottom('',
          "Currencty you are offline please check your internet \n connection and try again .");
      loading.value = false;
    });
  }
}
