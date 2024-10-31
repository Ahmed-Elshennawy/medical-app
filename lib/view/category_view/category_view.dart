import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/consts/lists.dart';
import 'package:medical/view/category_details_view/category_details_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppStyles.normal(
            title: AppStrings.category, color: AppColors.whiteColor),
        backgroundColor: AppColors.blueColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        leading: VxNone(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 190,
            ),
            itemCount: iconList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => const CategoryDetailsView());
                },
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          iconList[index],
                          height: 60,
                          width: 60,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      20.heightBox,
                      Divider(),
                      AppStyles.normal(
                        title: iconTitle[index],
                        color: AppColors.whiteColor,
                        size: AppSizes.size16,
                      ),
                      AppStyles.normal(
                        title: "13 Specialists",
                        color: AppColors.whiteColor.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
