import 'package:ecommerce_app/controller/auth/cheickemail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custom_auth_button.dart';
import '../../widget/auth/custom_text_Form.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_title_auth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheickemailControllerImp controller = Get.put(CheickemailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTitleAuth(text: "28".tr),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(body: "29".tr),
            const SizedBox(
              height: 15,
            ),
            CustomTextForm(
                isNumber: false,
                valid: (val) {},
                myController: controller.email,
                hintText: "12".tr,
                label: "18".tr,
                icon: Icons.email_outlined),
            CustomAuthButton(
                text: "30".tr,
                onPressed: () {
                  controller.goToSuccessSignUp();
                }),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
