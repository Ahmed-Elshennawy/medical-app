import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';

class CustomButton extends StatelessWidget {
  final Function? onTap;
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.buttonColor = Colors.blue,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
        ),
        onPressed: onTap as void Function()?,
        child: buttonText.text.make(),
      ),
    );
  }
}
