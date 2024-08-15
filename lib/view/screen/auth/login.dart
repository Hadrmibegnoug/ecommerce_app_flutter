import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/alertexitapp.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/custom_auth_button.dart';
import 'package:ecommerce_app/view/widget/auth/custom_signup_text.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_Form.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<LoginControllerImp>(
          builder: (controller) => WillPopScope(
                onWillPop: alertExitApp,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        const LogoAuth(),
                        CustomTitleAuth(text: "10".tr),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextBodyAuth(body: "11".tr),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextForm(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 100, "email");
                            },
                            myController: controller.email,
                            hintText: "12".tr,
                            label: "18".tr,
                            icon: Icons.email_outlined),
                        GetBuilder<LoginControllerImp>(
                            builder: (controller) => CustomTextForm(
                                isNumber: false,
                                obescureText: controller.isShowPass,
                                onTapIcon: () {
                                  controller.showPassword();
                                },
                                valid: (val) {
                                  return validInput(val!, 5, 30, "password");
                                },
                                myController: controller.password,
                                hintText: "13".tr,
                                label: "19".tr,
                                icon: Icons.lock_outline)),
                        InkWell(
                          onTap: () {
                            controller.goToForgetPassword();
                          },
                          child: Text(
                            "14".tr,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        CustomAuthButton(
                            text: "Sign In",
                            onPressed: () {
                              controller.login();
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomSignupText(
                            textOne: '16'.tr,
                            textTwo: '17'.tr,
                            onTap: () {
                              controller.goToSignUp();
                            })
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
