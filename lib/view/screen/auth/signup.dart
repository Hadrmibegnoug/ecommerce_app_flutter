import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../widget/auth/custom_auth_button.dart';
import '../../widget/auth/custom_signup_text.dart';
import '../../widget/auth/custom_text_Form.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_title_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SignUpControllerImp>(
          builder: (controller) => WillPopScope(
                onWillPop: alertExitApp,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTitleAuth(text: "10".tr),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextBodyAuth(body: "24".tr),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextForm(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 30, "username");
                            },
                            myController: controller.username,
                            hintText: "23".tr,
                            label: "20".tr,
                            icon: Icons.person_outline),
                        CustomTextForm(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 30, "email");
                            },
                            myController: controller.email,
                            hintText: "12".tr,
                            label: "18".tr,
                            icon: Icons.email_outlined),
                        CustomTextForm(
                            isNumber: true,
                            valid: (val) {
                              return validInput(val!, 5, 30, "phone");
                            },
                            myController: controller.phone,
                            hintText: "22".tr,
                            label: "21".tr,
                            icon: Icons.phone_android),
                        CustomTextForm(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 30, "password");
                            },
                            myController: controller.password,
                            hintText: "13".tr,
                            label: "19".tr,
                            icon: Icons.lock_outline),
                        CustomAuthButton(
                            text: "17".tr,
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomSignupText(
                            textOne: '25'.tr,
                            textTwo: '26'.tr,
                            onTap: () {
                              controller.goToLogin();
                            })
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
