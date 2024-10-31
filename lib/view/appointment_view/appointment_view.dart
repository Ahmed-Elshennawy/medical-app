import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.blueColor,
        title:
            AppStyles.bold(title: "Appointments", color: AppColors.whiteColor),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(radius: 25, child: Image.asset(icSignUp)),
              title: AppStyles.bold(
                  title: "Doctor Name", alignment: TextAlign.start),
              subtitle: AppStyles.normal(
                title: "Appointment time",
                color: AppColors.textColor.withOpacity(0.6),
              ),
            );
          }),
    );
  }
}
