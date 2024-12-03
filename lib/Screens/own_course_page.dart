// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Models/course_data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OwnCoursePage extends StatelessWidget {
  const OwnCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "Own Course", textSize: 18.0, textWeight: FontWeight.w600),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return allCourseWidget(
              courseName: courseDataModel[index].name.toString(),
              courseType: courseDataModel[index].medium.toString(),
              percentage: courseDataModel[index].percent!.toDouble(),
            );
          },
          itemCount: courseDataModel.length.bitLength,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
        ));
  }

  Widget allCourseWidget({courseName, courseType, percentage}) {
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
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LinearPercentIndicator(
                      width: Get.width * 0.3,
                      lineHeight: 4,
                      percent: percentage,
                      padding: EdgeInsets.zero,
                      barRadius: Radius.circular(5),
                      backgroundColor: AppColors.greyColor,
                      progressColor: AppColors.primaryColor,
                    ),
                    CommonWidgets().textWidget(
                        text: "${"${percentage}".split(".").last}% Finished",
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
