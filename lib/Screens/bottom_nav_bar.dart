// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'dart:io';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/course_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import 'home_page.dart';
import 'own_course_page.dart';
import 'profile_page.dart';

class PersistenBottomNavBar extends StatelessWidget {
  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        Get.back();
      },
    );
    Widget continueButton = TextButton(
      style: ButtonStyle(
          side: WidgetStatePropertyAll(
              BorderSide(color: AppColors.primaryColor, width: 1.5))),
      child: Text(
        "Yes",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onPressed: () async {
        exit(0);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        "Exit App",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      content: Text(
        "Are you sure for exit from app?",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => showAlertDialog(context),
        child: PersistentTabView(
          screenTransitionAnimation: ScreenTransitionAnimation(
              curve: Curves.easeInOutQuad,
              duration: Duration(milliseconds: 500)),
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
                icon: Icon(Icons.school_sharp),
                title: "All Course",
                iconSize: 30,
                textStyle: GoogleFonts.abyssinicaSil(
                    fontSize: 13, fontWeight: FontWeight.w700),
                activeForegroundColor: AppColors.primaryColor,
              ),
            ),
            PersistentTabConfig(
              screen: OwnCoursePage(),
              item: ItemConfig(
                icon: Icon(Icons.menu_book_outlined),
                title: "Own Course",
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
          navBarBuilder: (navBarConfig) => Style8BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: NavBarDecoration(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
