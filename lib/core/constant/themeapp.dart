import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyMedium: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14,
      )),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyMedium: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14,
      )),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
