import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';

class CustomButton extends StatelessWidget {
  final Function? onTap;
  final String buttonText;
  const CustomButton(
      {super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: ElevatedButton(
        onPressed: onTap as void Function()?,
        child: buttonText.text.make(),
      ),
    );
  }
}
