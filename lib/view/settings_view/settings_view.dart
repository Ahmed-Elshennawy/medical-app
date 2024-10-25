import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';
import 'package:medical/consts/lists.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppStyles.normal(
            title: AppStrings.settings, color: AppColors.whiteColor),
        backgroundColor: AppColors.blueColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        leading: VxNone(),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(icSignUp),
            ),
            title: Text('User Name'),
            subtitle: Text("user_email@gmail.com"),
          ),
          const Divider(),
          ListView(
            shrinkWrap: true,
            children: List.generate(
              settingList.length,
              (index) => ListTile(
                leading: Icon(settingIcons[index]),
                title: Text(settingList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
