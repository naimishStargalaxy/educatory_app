// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:async';

import 'package:educatory_app/Controllers/verification_code_controller.dart';
import 'package:educatory_app/Screens/user_information_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../Helpers/common_widget.dart';
import '../Helpers/utilities.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationCodeController verificationCodeController =
        Get.put(VerificationCodeController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.1),
                Center(
                  child: CommonWidgets().textWidget(
                    text: "Student Verification",
                    textSize: 20.0,
                    textColor: AppColors.blackColor,
                    textWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                CommonWidgets().textWidget(
                  text: "Enter verification code",
                  textSize: 18.0,
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: Get.height * 0.01),
                CommonWidgets().textWidget(
                  text: "Enter the verification code sent to (217) 555-0113",
                  textSize: 12.0,
                  textColor: AppColors.blackColor.withOpacity(0.5),
                  textWeight: FontWeight.w500,
                ),
                SizedBox(height: Get.height * 0.05),
                Center(
                  child: Pinput(
                    defaultPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(30, 60, 87, 1),
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryColor.withOpacity(.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    submittedPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) {
                      if (pin != "1234") {
                        CommonWidgets().toast(
                            toastColor: AppColors.redColor,
                            toastMsg: "Please Enter Correct OTP");
                      } else {
                        CommonWidgets()
                            .toast(
                                toastColor: AppColors.greenColor,
                                toastMsg: "OTP is Correct")
                            .then(
                          (value) {
                            Timer(
                              Duration(milliseconds: 1500),
                              () {
                                Get.to(() => UserInformationPage());
                              },
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                // SizedBox(height: Get.height * 0.04),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(() => UserInformationPage());
                //   },
                //   child: Container(
                //     height: 45,
                //     width: Get.width,
                //     decoration: BoxDecoration(
                //       color: AppColors.primaryColor,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Center(
                //       child: CommonWidgets().textWidget(
                //           text: "Continue",
                //           textColor: AppColors.whiteColor,
                //           textSize: 18.0,
                //           textAlign: TextAlign.center,
                //           textWeight: FontWeight.w500),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
