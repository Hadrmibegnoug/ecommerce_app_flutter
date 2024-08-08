import 'package:ecommerce_app/controller/auth/ressetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/signup_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_auth_button.dart';
import '../../../widget/auth/custom_text_Form.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_title_auth.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    RessetPasswordControllerImp controller =
        Get.put(RessetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Resset Password',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const CustomTitleAuth(text: "New Password"),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(body: "Please enter new password"),
            const SizedBox(
              height: 15,
            ),
            CustomTextForm(
                valid: (val) {},
                myController: controller.password,
                hintText: "Enter Your Password",
                label: "Password",
                icon: Icons.lock_outline),
            CustomTextForm(
                valid: (val) {},
                myController: controller.repassword,
                hintText: "Confirm Your Password",
                label: "Password",
                icon: Icons.lock_outline),
            CustomAuthButton(
                text: "save",
                onPressed: () {
                  controller.goToSuccessRessetPassword();
                }),
          ],
        ),
      ),
    );
  }
}
