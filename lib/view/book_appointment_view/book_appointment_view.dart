import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/res/components/custom_button.dart';
import 'package:medical/res/components/custom_textfield.dart';
import 'package:medical/view/appointment_view/appointment_view.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.blueColor,
        title:
            AppStyles.bold(title: "Doctor name", color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppStyles.bold(title: "Select appointment day"),
            CustomTextfield(hint: "Select day"),
            10.heightBox,
            AppStyles.bold(title: "Select appointment time"),
            CustomTextfield(hint: "Select time"),
            10.heightBox,
            AppStyles.bold(title: "Mobile Number:"),
            CustomTextfield(hint: "Enter your mobile number"),
            10.heightBox,
            AppStyles.bold(title: "Full Name:"),
            CustomTextfield(hint: "Enter your name"),
            10.heightBox,
            AppStyles.bold(title: "Message:"),
            CustomTextfield(hint: "Enter your message"),
            10.heightBox,
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
            onTap: () {
              Get.to((() => AppointmentView()));
            },
            buttonText: "Book an appoinment"),
      ),
    );
  }
}
