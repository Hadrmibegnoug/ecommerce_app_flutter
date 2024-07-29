import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_button.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_slider.dart';
import 'package:ecommerce_app/view/widget/onboarding/doController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: const SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(children: [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnBoarding(),
              ]))
        ],
      )),
    );
  }
}
