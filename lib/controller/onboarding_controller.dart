import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnboardingController extends GetxController {
  next();
  OnPageChanged(int index);
}

class OnBoardingControllerImp extends OnboardingController {
  late PageController pageController;

  int currentPage = 0;

  @override
  OnPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.toNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeOut);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
