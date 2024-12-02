// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_print, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Controllers/register_controller.dart';
import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/verification_code_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());
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
                  text: "Enter your number",
                  textSize: 18.0,
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: Get.height * 0.01),
                CommonWidgets().textWidget(
                  text: "Enter your phone number to receive verification code.",
                  textSize: 12.0,
                  textColor: AppColors.blackColor.withOpacity(0.5),
                  textWeight: FontWeight.w500,
                ),
                SizedBox(height: Get.height * 0.05),
                // =======================================================================
                CommonWidgets().textWidget(
                  text: "Mobile number",
                  textSize: 15.0,
                  textColor: AppColors.blackColor.withOpacity(0.8),
                  textWeight: FontWeight.w700,
                ),
                SizedBox(height: Get.height * 0.01),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border: Border.all(
                          color: AppColors.blackColor.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(10)),
                  child: InternationalPhoneNumberInput(
                    maxLength: 10,
                    inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Phone Number"),
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                      useBottomSheetSafeArea: true,
                    ),
                    // ignoreBlank: true,
                    textAlignVertical: TextAlignVertical.top,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: registerController.number,
                    textFieldController: registerController.controller,
                    spaceBetweenSelectorAndTextField: 0,
                    formatInput: false,
                    keyboardType: TextInputType.phone,
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ),
                // =======================================================================
                SizedBox(height: Get.height * 0.04),
                GestureDetector(
                  onTap: () {
                    if (registerController.controller.text.isEmpty) {
                      CommonWidgets().toast(
                          toastMsg: "Please Enter Mobile Number",
                          toastColor: AppColors.redColor);
                    } else if (registerController.controller.text.length < 10) {
                      CommonWidgets().toast(
                          toastMsg: "PLease Enter Valid Number",
                          toastColor: AppColors.redColor);
                    } else {
                      Get.to(() => VerificationCodePage());
                    }
                  },
                  child: Container(
                    height: 45,
                    width: Get.width,
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

                SizedBox(height: Get.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 1,
                      width: Get.width * 0.35,
                      color: AppColors.blackColor.withOpacity(0.2),
                    ),
                    CommonWidgets().textWidget(
                      text: "OR",
                      textSize: 12.0,
                      textColor: AppColors.blackColor,
                      textWeight: FontWeight.w500,
                    ),
                    Container(
                      height: 1,
                      width: Get.width * 0.35,
                      color: AppColors.blackColor.withOpacity(0.2),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.04),
                Container(
                  height: 40,
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.blackColor.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.icons + "Google.png", height: 25),
                      SizedBox(width: 15),
                      CommonWidgets().textWidget(
                        text: "Continue with Google",
                        textSize: 14.0,
                        textColor: AppColors.blackColor,
                        textWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                Container(
                  height: 40,
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.blackColor.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.icons + "Facebook.png", height: 25),
                      SizedBox(width: 15),
                      CommonWidgets().textWidget(
                        text: "Continue with Facebook",
                        textSize: 14.0,
                        textColor: AppColors.blackColor,
                        textWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
