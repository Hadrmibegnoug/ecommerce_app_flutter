import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constant/color.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslations(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headlineMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyMedium: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 12,
            )),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
