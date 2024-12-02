// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "Personal information",
              textSize: 16.0,
              textWeight: FontWeight.w500),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonWidgets().textWidget(
                  text: "Personal Info",
                  textSize: 18.0,
                  textWeight: FontWeight.w700),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "Test User",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "+91 9876543210",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "testuser@gmail.com",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              CommonWidgets().textWidget(
                  text: "Personal Info",
                  textSize: 18.0,
                  textWeight: FontWeight.w700),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "125478 9856",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "Master Of Computer Application",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.greyColor),
                ),
                child: CommonWidgets().textWidget(
                    text: "University of Baroda",
                    textSize: 14.0,
                    textColor: AppColors.blackColor.withOpacity(0.5),
                    textWeight: FontWeight.w400),
              ),
              Spacer(),
              Container(
                height: 45,
                width: Get.width,
                margin: EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: CommonWidgets().textWidget(
                      text: "Save Changes",
                      textColor: AppColors.whiteColor,
                      textSize: 18.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
