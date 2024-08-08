import 'package:ecommerce_app/controller/auth/succesressetpassword.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_auth_button.dart';

class SuccessRessetpassword extends StatelessWidget {
  const SuccessRessetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccesRessetPasswordControllerImp controller =
        Get.put(SuccesRessetPasswordControllerImp());
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
