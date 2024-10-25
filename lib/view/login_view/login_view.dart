import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/res/components/custom_button.dart';
import 'package:medical/res/components/custom_textfield.dart';
import 'package:medical/view/home_view/home.dart';
import 'package:medical/view/sign_up_view/sign_up_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                      Image.asset(icLogin, width: 150),
                      AppStyles.bold(
                        title: AppStrings.welcomeBack,
                        size: AppSizes.size18,
                      ),
                      AppStyles.bold(
                        title: AppStrings.weAreExcited,
                        size: AppSizes.size18,
                      ),
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
                        CustomTextfield(hint: AppStrings.email),
                        10.heightBox,
                        CustomTextfield(hint: AppStrings.password),
                        20.heightBox,
                        Align(
                          alignment: Alignment.centerRight,
                          child: AppStyles.normal(
                            title: AppStrings.forgetPassword,
                          ),
                        ),
                        20.heightBox,
                        CustomButton(
                          buttonText: AppStrings.login,
                          onTap: () {
                            Get.to(() => const Home());
                          },
                        ),
                        20.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppStyles.normal(
                              title: AppStrings.dontHaveAccount,
                              size: AppSizes.size16,
                            ),
                            8.widthBox,
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const SignUpView());
                              },
                              child: AppStyles.bold(
                                title: AppStrings.signup,
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
