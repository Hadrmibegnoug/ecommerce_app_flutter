import 'dart:ui';

import 'package:ecommerce_app/core/constant/themeapp.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData themeApp = themeEnglish;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    themeApp = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(themeApp);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPreferedLang = myServices.sharedPreferences.getString("lang");
    if (sharedPreferedLang == "ar") {
      language = const Locale("ar");
      themeApp = themeArabic;
    } else if (sharedPreferedLang == "en") {
      language = const Locale("en");
      themeApp = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      themeApp = themeEnglish;
    }
    super.onInit();
  }
}
