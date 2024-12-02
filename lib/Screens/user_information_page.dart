// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Controllers/user_information_controller.dart';
import 'package:educatory_app/Screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Helpers/common_widget.dart';
import '../Helpers/preferances.dart';
import '../Helpers/utilities.dart';

class UserInformationPage extends StatelessWidget {
  const UserInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserInformationController userInformationController =
        Get.put(UserInformationController());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Get.defaultDialog(
                title: "Successful",
                titleStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Preference.preference
                          .saveBool(PrefernceKey.isUserVerify, true);
                      Get.off(PersistenBottomNavBar());
                    },
                    child: Container(
                      height: 45,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(15)),
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
                content: Container(
                  child: Lottie.asset(AppImages.icons + "check.json",
                      repeat: false),
                ));
          },
          child: Container(
            height: 45,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Center(
              child: CommonWidgets().textWidget(
                  text: "Confirm",
                  textColor: AppColors.whiteColor,
                  textSize: 18.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w500),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.1),
              Center(
                child: CommonWidgets().textWidget(
                  text: "Student Information",
                  textSize: 20.0,
                  textColor: AppColors.blackColor,
                  textWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: Get.height * 0.04),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryColor),
                    color: AppColors.primaryColor.withOpacity(0.2),
                  ),
                  child: Image.asset(AppImages.icons + "camera.png"),
                ),
              ),
              CommonWidgets().textWidget(
                text: "Full name",
                textSize: 12.0,
                textColor: AppColors.blackColor,
                textWeight: FontWeight.w500,
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  controller: userInformationController.fullnamecontroller,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full Name",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonWidgets().textWidget(
                text: "Email",
                textSize: 12.0,
                textColor: AppColors.blackColor,
                textWeight: FontWeight.w500,
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  controller: userInformationController.emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonWidgets().textWidget(
                text: "University ID",
                textSize: 12.0,
                textColor: AppColors.blackColor,
                textWeight: FontWeight.w500,
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  controller: userInformationController.uniIDcontroller,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "University ID",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonWidgets().textWidget(
                text: "Course",
                textSize: 12.0,
                textColor: AppColors.blackColor,
                textWeight: FontWeight.w500,
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  controller: userInformationController.coursecontroller,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Course",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonWidgets().textWidget(
                text: "University",
                textSize: 12.0,
                textColor: AppColors.blackColor,
                textWeight: FontWeight.w500,
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  controller: userInformationController.unicontroller,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "University",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
