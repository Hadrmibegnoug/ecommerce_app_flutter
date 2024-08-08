import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.OnPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].imgUrl!,
                  width: 200,
                  height: 230,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              ],
            ));
  }
}
