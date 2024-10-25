import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/res/components/custom_button.dart';
import 'package:medical/res/components/custom_textfield.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        icSignUp,
                        width: 110,
                      ),
                      AppStyles.bold(
                          title: AppStrings.signupNow, size: AppSizes.size18),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextfield(hint: AppStrings.fullname),
                        10.heightBox,
                        CustomTextfield(hint: AppStrings.email),
                        10.heightBox,
                        CustomTextfield(hint: AppStrings.password),
                        20.heightBox,
                        CustomButton(
                          buttonText: AppStrings.signup,
                          onTap: () {},
                        ),
                        20.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppStyles.normal(
                              title: AppStrings.alreadyHaveAccount,
                              size: AppSizes.size16,
                            ),
                            8.widthBox,
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: AppStyles.bold(
                                title: AppStrings.login,
                                size: AppSizes.size16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
