// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:educatory_app/Screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Helpers/common_widget.dart';
import '../Helpers/preferances.dart';
import '../Helpers/utilities.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  PageController _pageController = PageController();
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.8,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    selectedIndex = value;
                  },
                  children: [
                    pageViewWidget(
                      context: context,
                      titleText: "Welcome to Educatory",
                      boxText:
                          "Your go-to platform for live sessions and on-demand courses. We're excited to help you learn and grow!",
                      image: "Welcome.png",
                    ),
                    pageViewWidget(
                      context: context,
                      titleText: "Live Session with Teachers",
                      boxText:
                          "Join live with top teachers. Session-based study with real-time feedback and support.",
                      image: "LiveCourse.png",
                    ),
                    pageViewWidget(
                      context: context,
                      titleText: "Engage with Quizzes",
                      boxText:
                          "Test your knowledge with interactive quizzes. Track your progress and reinforce your learning!",
                      image: "Quizzes.png",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: JumpingDotEffect(
                    spacing: 8,
                    dotWidth: 18,
                    dotHeight: 5,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey.withOpacity(0.5),
                    activeDotColor: AppColors.primaryColor),
              ),
            ],
          )),
    );
  }

  Widget pageViewWidget({context, boxText, image, titleText}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Container(
            height: Get.height * 0.35,
            margin: EdgeInsets.all(15),
            child: Image.asset(AppImages.images + image, fit: BoxFit.contain),
          ),
          SizedBox(height: 20),
          CommonWidgets().textWidget(
              text: titleText,
              textColor: AppColors.primaryColor,
              textSize: 22.0,
              textAlign: TextAlign.center,
              textWeight: FontWeight.bold),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CommonWidgets().textWidget(
                text: boxText,
                textColor: AppColors.blackColor,
                textSize: 18.0,
                textAlign: TextAlign.center,
                textWeight: FontWeight.w700),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Get.off(() => RegisterPage());
                  Preference.preference
                      .saveBool(PrefernceKey.isIntroductionScreenLoaded, true);
                },
                child: Container(
                  height: 50,
                  width: Get.width * 0.4,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: AppColors.primaryColor, width: 2)),
                  child: Center(
                    child: CommonWidgets().textWidget(
                        text: "Skip",
                        textColor: AppColors.primaryColor,
                        textSize: 18.0,
                        textAlign: TextAlign.center,
                        textWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_pageController.page == 2) {
                    Get.off(() => RegisterPage());
                    Preference.preference.saveBool(
                        PrefernceKey.isIntroductionScreenLoaded, true);
                  } else {
                    _pageController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOutCubicEmphasized);
                  }
                },
                child: Container(
                  height: 50,
                  width: Get.width * 0.4,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CommonWidgets().textWidget(
                        text: "Continue",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textAlign: TextAlign.center,
                        textWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
