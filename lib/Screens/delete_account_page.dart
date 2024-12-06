// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        height: 60,
        color: AppColors.whiteColor,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.defaultDialog(
                  title: "Confirm Delete Account",
                  titleStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        await preferences.clear();
                        Get.offAll(() => RegisterPage());
                      },
                      child: Container(
                        height: 45,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: AppColors.redColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: CommonWidgets().textWidget(
                              text: "Confirm Delete",
                              textColor: AppColors.whiteColor,
                              textSize: 18.0,
                              textAlign: TextAlign.center,
                              textWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                  content: SizedBox(
                    height: 100,
                    width: 100,
                    child: Lottie.asset(AppImages.icons + "close.json",
                        frameRate: FrameRate(120), repeat: false),
                  ));
            },
            child: Container(
              height: 45,
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CommonWidgets().textWidget(
                    text: "Click Here",
                    textColor: AppColors.whiteColor,
                    textSize: 18.0,
                    textAlign: TextAlign.center,
                    textWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        title: CommonWidgets().textWidget(
            text: "Delete Account",
            textSize: 18.0,
            textWeight: FontWeight.w600),
        bottom: PreferredSize(
            preferredSize: Size(Get.width, 10),
            child: Divider(
              thickness: 5,
              color: AppColors.greyColor,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonWidgets().textWidget(
                  text: "Delete Account",
                  textSize: 18.0,
                  textWeight: FontWeight.w600),
              CommonWidgets().textWidget(
                  text:
                      "Please be informed about below information before deleting",
                  textSize: 12.0,
                  textColor: AppColors.blackColor.withOpacity(.5),
                  textWeight: FontWeight.w600),
              SizedBox(height: 20),
              CommonWidgets().textWidget(
                  text:
                      "> Account deletion is permanent\n> We remove all your data\n> You can’t log in to this account anymore\n> Any services that are currently on progress will be suspended",
                  textSize: 12.0,
                  textColor: AppColors.blackColor.withOpacity(.5),
                  textWeight: FontWeight.w600),
              SizedBox(height: 30),
              CommonWidgets().textWidget(
                  text: "Delete reason",
                  textSize: 14.0,
                  textWeight: FontWeight.w600),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Delete reason",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                ),
              ),
              SizedBox(height: 15),
              CommonWidgets().textWidget(
                  text: "Details", textSize: 14.0, textWeight: FontWeight.w600),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(0.2)),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write a details",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
