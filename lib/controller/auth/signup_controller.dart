import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignupController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  signUp() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
      Get.offNamed(AppRoutes.verifyCodeSignUp);
      // Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
      // Get.offNamed(AppRoutes.verifyCodeSignUp);
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
