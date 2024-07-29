import 'package:ecommerce_app/view/widget/language/custom_button_lang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose language",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(onPressed: () {}, textButton: "Ar"),
            CustomButtonLang(onPressed: () {}, textButton: "En"),
          ],
        ),
      ),
    );
  }
}
