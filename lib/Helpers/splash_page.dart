// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, use_build_context_synchronously

import 'dart:async';

import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/bottom_nav_bar.dart';
import '../Screens/register_page.dart';
import 'preferances.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () async {
        // ===========================
        var isIntroduction = await Preference.preference.getBool(
            key: PrefernceKey.isIntroductionScreenLoaded, defVal: false);
        var isUserLoaded = await Preference.preference
            .getBool(key: PrefernceKey.isUserVerify, defVal: false);
        // ==========================
        if (isIntroduction == false && isUserLoaded == false) {
          Get.offAll(() => IntroScreens());
        } else if (isIntroduction == true && isUserLoaded == false) {
          Get.offAll(() => RegisterPage());
        } else if (isIntroduction == true && isUserLoaded == true) {
          Get.offAll(() => PersistenBottomNavBar());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.whiteColor, AppColors.primaryColor]),
          ),
          child: Center(
            child: Image.asset(AppImages.images + "appLogo.png", height: 150),
          ),
        ),
      ),
    );
  }
}
