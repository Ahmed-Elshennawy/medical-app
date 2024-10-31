import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.blueColor,
        title:
            AppStyles.bold(title: "Category Name", color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 180,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.bgDarkColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    padding: EdgeInsets.all(8.0),
                    color: AppColors.blueColor,
                    child: Image.asset(
                      icLogin,
                    ),
                  ),
                  10.heightBox,
                  AppStyles.bold(
                    title: "Doctor Name",
                  ),
                  VxRating(
                    selectionColor: AppColors.yellowColor,
                    onRatingUpdate: (value) {},
                    maxRating: 5,
                    count: 5,
                    value: 4,
                    stepInt: true,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
