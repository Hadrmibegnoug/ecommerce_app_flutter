import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/checkemail.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/resetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/success_ressetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verifyCode.dart';
import 'package:ecommerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onBoarding: (context) => const Onboarding(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.forgetPassword: (context) => const Forgetpassword(),
  AppRoutes.resetPassword: (context) => const Resetpassword(),
  AppRoutes.verfyCode: (context) => const Verifycode(),
  AppRoutes.successRessetPassword: (context) => const SuccessRessetpassword(),
  AppRoutes.successSignUp: (context) => const SuccessSignup(),
  AppRoutes.checkEmail: (context) => const CheckEmail(),
  AppRoutes.verifyCodeSignUp: (context) => const VerifycodeSignUp(),
};
