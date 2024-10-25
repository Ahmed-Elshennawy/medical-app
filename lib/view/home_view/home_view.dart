import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/consts/lists.dart';
import 'package:medical/res/components/custom_textfield.dart';
import 'package:medical/view/doctor_profile_view/doctor_profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppStyles.normal(
            title: "${AppStrings.welcome}, User", color: AppColors.whiteColor),
        backgroundColor: AppColors.blueColor,
        leading: VxNone(),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            height: 80,
            color: AppColors.blueColor,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextfield(
                    hint: AppStrings.search,
                    borderColor: AppColors.whiteColor,
                    hintColor: AppColors.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.blueColor,
                          ),
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(iconList[index],
                                  width: 40, color: AppColors.whiteColor),
                              5.heightBox,
                              AppStyles.normal(
                                title: iconTitle[index],
                                color: AppColors.whiteColor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppStyles.bold(
                    title: "Popualr Dotctors",
                    color: AppColors.blueColor,
                    size: AppSizes.size18,
                  ),
                ),
                10.heightBox,
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const DoctorProfileView());
                        },
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.bgDarkColor,
                          ),
                          margin: EdgeInsets.only(right: 8.0),
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                color: AppColors.blueColor,
                                child: Image.asset(
                                  icSignUp,
                                  width: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              5.heightBox,
                              AppStyles.normal(title: "Doctor Name"),
                              5.heightBox,
                              AppStyles.normal(
                                title: "Category",
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AppStyles.normal(
                        title: "View All", color: AppColors.blueColor),
                  ),
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blueColor,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image.asset(icBody,
                              width: 30, color: AppColors.whiteColor),
                          10.heightBox,
                          AppStyles.normal(
                            title: "Lab Test",
                            color: AppColors.whiteColor,
                            size: AppSizes.size12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
