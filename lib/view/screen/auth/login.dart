import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_Form.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: const [
            LogoAuth(),
            CustomTitleAuth(text: "Welcome Back"),
            SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(
                body:
                    "Sign In With Your Email And Password OR Continue With Social Media."),
            SizedBox(
              height: 15,
            ),
            CustomTextForm(
                hintText: "Enter Your Email",
                label: "Email",
                icon: Icons.email_outlined),
            CustomTextForm(
                hintText: "Enter Your Password",
                label: "Password",
                icon: Icons.lock_outline)
          ],
        ),
      ),
    );
  }
}
