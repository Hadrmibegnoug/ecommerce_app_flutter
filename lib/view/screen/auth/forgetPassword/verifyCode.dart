import 'package:ecommerce_app/controller/auth/verifycode_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/signup_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_auth_button.dart';
import '../../../widget/auth/custom_text_Form.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_title_auth.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const CustomTitleAuth(text: "Check code"),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
                body: "Please Enter The Digit Code Sent To hbegnoug@gmail.com"),
            const SizedBox(
              height: 15,
            ),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20.0),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResstPassword();
              }, // end onSubmit
            ),
            CustomAuthButton(text: "Check", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
