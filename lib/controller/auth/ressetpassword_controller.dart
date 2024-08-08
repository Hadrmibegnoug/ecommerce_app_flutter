import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RessetPasswordController extends GetxController {
  goToSuccessRessetPassword();
  ressetPassword();
}

class RessetPasswordControllerImp extends RessetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  goToSuccessRessetPassword() {
    Get.offNamed(AppRoutes.successRessetPassword);
  }

  @override
  ressetPassword() {}

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
