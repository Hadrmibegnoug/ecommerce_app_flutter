import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccesSignUpControllerImp controller = Get.put(SuccesSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('32'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outlined,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text("37".tr,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontSize: 30)),
            Text("38".tr),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomAuthButton(
                text: "31".tr,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
