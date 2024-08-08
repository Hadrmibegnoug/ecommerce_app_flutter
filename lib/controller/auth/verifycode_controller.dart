import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResstPassword();
  cheickEmail();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;
  @override
  goToResstPassword() {
    Get.toNamed(AppRoutes.checkEmail);
  }

  @override
  cheickEmail() {}

  @override
  void onInit() {
    super.onInit();
  }
}
