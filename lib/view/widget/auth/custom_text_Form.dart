import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final String label;
  final IconData icon;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obescureText;
  final void Function()? onTapIcon;

  const CustomTextForm(
      {super.key,
      this.onTapIcon,
      this.obescureText,
      required this.myController,
      required this.hintText,
      required this.label,
      required this.icon,
      required this.isNumber,
      required this.valid});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        obscureText:
            obescureText == null || obescureText == false ? false : true,
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(label)),
            suffixIcon: InkWell(
              onTap: onTapIcon,
              child: Icon(icon),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
