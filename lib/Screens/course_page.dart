// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Models/course_data_model.dart';
import 'package:educatory_app/Screens/payment_page.dart';
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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "All Course", textSize: 18.0, textWeight: FontWeight.w600),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => PaymentPage());
              },
              child: allCourseWidget(
                courseName: courseDataModel[index].name.toString(),
                courseType: courseDataModel[index].medium.toString(),
              ),
            );
          },
          itemCount: courseDataModel.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
        ));
  }

  Widget allCourseWidget({courseName, courseType}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width * 0.3,
            height: Get.width * 0.3,
            decoration: BoxDecoration(
                color: AppColors.whiteColor2,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rpCV_Esm0MpYTJEy8d5XqtzEDUFre-D_1g&s"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: Get.width * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonWidgets().textWidget(
                    text: courseName,
                    textColor: AppColors.blackColor,
                    textSize: 14.0,
                    textmaxLine: 2,
                    textoverFlow: TextOverflow.ellipsis,
                    textWeight: FontWeight.w600),
                CommonWidgets().textWidget(
                    text: courseType,
                    textColor: AppColors.blackColor.withOpacity(0.6),
                    textSize: 12.0,
                    textWeight: FontWeight.w400),
                CommonWidgets().textWidget(
                    text: "Julia Anatole · 1 hr",
                    textColor: AppColors.blackColor.withOpacity(0.6),
                    textSize: 12.0,
                    textWeight: FontWeight.w400),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets().textWidget(
                        text: "\$12.99",
                        textColor: AppColors.blackColor,
                        textSize: 14.0,
                        textWeight: FontWeight.w600),
                    CommonWidgets().textWidget(
                        text: "⭐4.5 (2,980)",
                        textColor: AppColors.blackColor,
                        textSize: 12.0,
                        textWeight: FontWeight.w400),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
