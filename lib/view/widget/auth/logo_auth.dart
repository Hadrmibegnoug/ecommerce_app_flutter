import 'package:ecommerce_app/core/constant/imgasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImgAsset.logo,
      height: 170,
    );
  }
}
