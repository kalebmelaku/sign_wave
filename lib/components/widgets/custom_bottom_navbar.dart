import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signwave/constants/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final routes = [
      '/home',
      '/signwave',
      '/setting',
      '/onoff',
    ];
    void onTabSelected(int index) {
      setState(() {
        widget.selectedIndex = index;
      });
      Navigator.pushNamed(context, routes[index]);
    }

    return SafeArea(
      child: FloatingNavbar(
        margin: EdgeInsets.only(bottom: 0.h),
        fontSize: 15,
        padding: EdgeInsets.symmetric(vertical: 2.h),
        backgroundColor: MyColors.primaryColor,
        selectedItemColor: MyColors.primaryColor,
        onTap: (val) => onTabSelected(val),
        currentIndex: widget.selectedIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.waves, title: 'Signwave'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          FloatingNavbarItem(icon: Icons.lightbulb, title: 'On/Off'),
        ],
      ),
    );
  }
}
