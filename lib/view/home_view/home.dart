import 'package:flutter/material.dart';
import 'package:medical/consts/colors.dart';
import 'package:medical/view/appointment_view/appointment_view.dart';
import 'package:medical/view/category_view/category_view.dart';
import 'package:medical/view/home_view/home_view.dart';
import 'package:medical/view/login_view/login_view.dart';
import 'package:medical/view/settings_view/settings_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List screenList = [
    const HomeView(),
    const AppointmentView(),
    const CategoryView(),
    const LoginView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.whiteColor.withOpacity(0.6),
        backgroundColor: AppColors.blueColor,
        selectedItemColor: AppColors.whiteColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range), label: 'Appointments'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Dector'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
