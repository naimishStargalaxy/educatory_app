// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Helpers/common_widget.dart';
import '../Helpers/utilities.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CommonWidgets().textWidget(
                text: "Course Page",
                textColor: AppColors.blackColor,
                textSize: 15.0,
                textWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
