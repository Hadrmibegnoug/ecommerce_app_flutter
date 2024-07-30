import 'dart:ui';

import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPreferedLang = myServices.sharedPreferences.getString("lang");
    if (sharedPreferedLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPreferedLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
