import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccesSignUpController extends GetxController {
  goToLogin();
}

class SuccesSignUpControllerImp extends SuccesSignUpController {
  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }
}
