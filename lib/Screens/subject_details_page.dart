// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class SubjectDetailsPage extends StatelessWidget {
  const SubjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        surfaceTintColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor2),
        title: CommonWidgets().textWidget(
            text: "Maths",
            textColor: AppColors.whiteColor2,
            textSize: 20.0,
            textWeight: FontWeight.w600),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  color: AppColors.primaryColor,
                ),
                Center(
                  child: Container(
                    width: Get.width * 0.9,
                    margin: EdgeInsets.only(top: Get.height * 0.05),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor2,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyColor.withOpacity(.6),
                          offset: Offset(0, 10),
                          spreadRadius: 2,
                          blurRadius: 7,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height * 0.2,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.euroschoolindia.com/wp-content/uploads/2023/10/what-is-vedic-mathss-for-kids-jpg.webp"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 5),
                        CommonWidgets().textWidget(
                            text: "ARCH116 - Introduction to Architecture",
                            textColor: AppColors.blackColor,
                            textSize: 16.0,
                            textWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: Get.width * 0.9,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor2,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(.6),
                      offset: Offset(0, 5),
                      spreadRadius: 2,
                      blurRadius: 7,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: CommonWidgets().textWidget(
                    text:
                        "ARCH116 bridges foundational mathematics with architectural design, covering algebra, functions, and basic geometry for aspiring architects.",
                    textColor: AppColors.blackColor,
                    textSize: 13.0,
                    textWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 15),
            CommonWidgets().textWidget(
                text: "10 Available Tutors",
                textColor: AppColors.blackColor,
                textSize: 20.0,
                textWeight: FontWeight.w600),
            SizedBox(height: 10),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Container(
                  width: Get.width * 0.9,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor.withOpacity(.4),
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Hb5xzFZJCTW4cMqmPwsgfw-gILUV7QevvQ&s")),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonWidgets().textWidget(
                              text: "Marry Peter",
                              textColor: AppColors.blackColor,
                              textSize: 14.0,
                              textWeight: FontWeight.w600),
                          CommonWidgets().textWidget(
                              text: "University of Baroda",
                              textColor: AppColors.blackColor.withOpacity(0.5),
                              textSize: 12.0,
                              textWeight: FontWeight.w600),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 3.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 12,
                                unratedColor: AppColors.greyColor,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(width: 5),
                              CommonWidgets().textWidget(
                                  text: "(3.5)",
                                  textColor: AppColors.blackColor,
                                  textSize: 12.0,
                                  textWeight: FontWeight.w500),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      CommonWidgets().textWidget(
                          text: "\$21/hr",
                          textColor: AppColors.primaryColor,
                          textSize: 12.0,
                          textWeight: FontWeight.w600),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
