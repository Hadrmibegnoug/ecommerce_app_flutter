import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccesRessetPasswordController extends GetxController {
  goToLogin();
}

class SuccesRessetPasswordControllerImp extends SuccesRessetPasswordController {
  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }
}
