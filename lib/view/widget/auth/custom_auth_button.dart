import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomAuthButton(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
