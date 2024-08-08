import 'package:ecommerce_app/controller/auth/forgetPassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_auth_button.dart';
import '../../../widget/auth/custom_text_Form.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_title_auth.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const CustomTitleAuth(text: "Check Email"),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
                body:
                    "Please Enter Your Email address To Receive a verification code"),
            const SizedBox(
              height: 15,
            ),
            CustomTextForm(
                valid: (val) {},
                myController: controller.email,
                hintText: "Enter Your Email",
                label: "Email",
                icon: Icons.email_outlined),
            CustomAuthButton(
                text: "Check",
                onPressed: () {
                  controller.goToVerifyCode();
                }),
          ],
        ),
      ),
    );
  }
}
