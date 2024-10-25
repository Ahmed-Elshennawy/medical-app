import 'package:flutter/material.dart';
import 'package:medical/consts/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController? textController;
  final Color borderColor;
  final Color hintColor;
  const CustomTextfield({
    super.key,
    required this.hint,
    this.textController,
    this.borderColor = Colors.black,
    this.hintColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.whiteColor,
      controller: textController,
      style: TextStyle(
        color: AppColors.whiteColor,
      ),
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: hintColor),
      ),
    );
  }
}
