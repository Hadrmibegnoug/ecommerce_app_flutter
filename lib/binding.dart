import 'package:get/get.dart';

import 'controller/auth/login_controller.dart';
import 'controller/auth/signup_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
  }
}
