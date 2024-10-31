import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/res/components/custom_button.dart';
import 'package:medical/view/book_appointment_view/book_appointment_view.dart';
// import 'package:medical/view/appointment_view/appointment_view.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.blueColor,
        title:
            AppStyles.bold(title: "Doctor Name", color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                children: [
                  CircleAvatar(radius: 30, child: Image.asset(icSignUp)),
                  20.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppStyles.bold(
                          title: "Doctor Name", color: AppColors.textColor),
                      AppStyles.bold(
                          title: "Category",
                          color: AppColors.textColor.withOpacity(0.7)),
                      VxRating(
                        selectionColor: AppColors.yellowColor,
                        onRatingUpdate: (value) {},
                        count: 5,
                        value: 4,
                        stepInt: true,
                      ),
                    ],
                  ),
                  Spacer(),
                  AppStyles.normal(
                      title: "See all reviews", color: AppColors.blueColor),
                ],
              ),
            ),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: AppStyles.bold(
                      title: "Phone Number",
                      alignment: TextAlign.left,
                    ),
                    subtitle: AppStyles.normal(
                      title: "+01093757296",
                      color: AppColors.textColor.withOpacity(0.7),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.amber,
                      ),
                      child: Icon(
                        Icons.call,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 12.0, left: 12.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.heightBox,
                        AppStyles.bold(title: "About", size: AppSizes.size16),
                        10.heightBox,
                        AppStyles.normal(
                            color: AppColors.textColor.withOpacity(0.7),
                            title:
                                "A physician, medical practitioner (British English), medical doctor, or simply doctor is a health professional who practices medicine, which is concerned with promoting, maintaining or restoring health through the study, diagnosis, prognosis and treatment of disease, injury, and other physical and mental impairments."),
                        20.heightBox,
                        AppStyles.bold(title: "Adress", size: AppSizes.size16),
                        10.heightBox,
                        AppStyles.normal(
                          title: "123 Main Street, apt 4B San Diego CA, 91911",
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                        20.heightBox,
                        AppStyles.bold(
                            title: "Working Time", size: AppSizes.size16),
                        10.heightBox,
                        AppStyles.normal(
                          title: "9:00 AM to 12:00 PM",
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                        20.heightBox,
                        AppStyles.bold(
                            title: "Services", size: AppSizes.size16),
                        10.heightBox,
                        AppStyles.normal(
                          title:
                              "A service is an act or use for which a consumer, company, or government is willing to pay.",
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
            onTap: () {
              Get.to((() => BookAppointmentView()));
            },
            buttonText: "Book an appoinment"),
      ),
    );
  }
}
