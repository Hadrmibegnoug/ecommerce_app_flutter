import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUp();
  cheickEmail();
}

class VerifyCodeControllerSignUpImp extends VerifyCodeSignUpController {
  late String verifyCode;
  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoutes.successSignUp);
  }

  @override
  cheickEmail() {}

  @override
  void onInit() {
    super.onInit();
  }
}
