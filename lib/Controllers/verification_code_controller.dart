// ignore_for_file: unnecessary_overrides, prefer_const_constructors

import 'dart:async';

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController {
  @override
  void onInit() {
    codeTimer();
    super.onInit();
  }

  codeTimer() {
    Timer(
      Duration(seconds: 2),
      () {
        Get.snackbar("", "",
            titleText: CommonWidgets().textWidget(
              text: "Verification Code",
              textColor: AppColors.blackColor,
              textSize: 18.0,
              textWeight: FontWeight.w700,
            ),
            messageText: CommonWidgets().textWidget(
              text: "Your Verification Code Is '1234'",
              textColor: AppColors.blackColor.withOpacity(.7),
              textSize: 16.0,
              textWeight: FontWeight.w600,
            ),
            backgroundColor: AppColors.greyColor,
            duration: Duration(seconds: 4));
      },
    );
  }
}
