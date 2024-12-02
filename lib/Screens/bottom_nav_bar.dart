// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/course_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import 'home_page.dart';
import 'profile_page.dart';

class PersistenBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        screenTransitionAnimation: ScreenTransitionAnimation(
            curve: Curves.fastEaseInToSlowEaseOut,
            duration: Duration(milliseconds: 750)),
        tabs: [
          PersistentTabConfig(
            screen: HomePage(),
            item: ItemConfig(
              icon: Icon(Icons.home),
              title: "Home",
              iconSize: 30,
              textStyle: GoogleFonts.abyssinicaSil(
                  fontSize: 13, fontWeight: FontWeight.w700),
              activeForegroundColor: AppColors.primaryColor,
            ),
          ),
          PersistentTabConfig(
            screen: CoursePage(),
            item: ItemConfig(
              icon: Icon(Icons.menu_book),
              title: "Course",
              iconSize: 30,
              textStyle: GoogleFonts.abyssinicaSil(
                  fontSize: 13, fontWeight: FontWeight.w700),
              activeForegroundColor: AppColors.primaryColor,
            ),
          ),
          PersistentTabConfig(
            screen: ProfilePage(),
            item: ItemConfig(
              icon: Icon(Icons.person),
              title: "Profile",
              iconSize: 30,
              textStyle: GoogleFonts.abyssinicaSil(
                  fontSize: 13, fontWeight: FontWeight.w700),
              activeForegroundColor: AppColors.primaryColor,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
