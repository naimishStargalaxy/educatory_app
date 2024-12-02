// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:educatory_app/Controllers/course_detail_controller.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../Helpers/common_widget.dart';

class CourseDetailPage extends StatelessWidget {
  CourseDetailController _courseDetailController =
      Get.put(CourseDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        height: 45,
        width: Get.width,
        margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: CommonWidgets().textWidget(
              text: "Purchase for \$12.99",
              textColor: AppColors.whiteColor,
              textSize: 18.0,
              textAlign: TextAlign.center,
              textWeight: FontWeight.w600),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        title: CommonWidgets().textWidget(
            text: "About Course",
            textSize: 16.0,
            textWeight: FontWeight.w500,
            textColor: AppColors.whiteColor),
      ),
      body: Obx(
        () => SingleChildScrollView(
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
                            color: AppColors.greyColor,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/ti/vettori-gratis/p1/22901895-astratto-digitale-tecnologia-futuristico-circuito-blu-viola-sfondo-informatica-scienza-tecnologia-innovazione-comunicazione-futuro-ai-grande-dati-internet-rete-connessione-nube-hi-tech-illustrazione-vettore-gratuito-vettoriale.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          SizedBox(height: 5),
                          CommonWidgets().textWidget(
                              text: "Advanced Front-End Programming Techniques",
                              textSize: 16.0,
                              textWeight: FontWeight.w600,
                              textmaxLine: 2,
                              textoverFlow: TextOverflow.ellipsis,
                              textColor: AppColors.blackColor),
                          SizedBox(height: 5),
                          CommonWidgets().textWidget(
                              text: "Julia Anatole · 1hr",
                              textSize: 12.0,
                              textWeight: FontWeight.w400,
                              textoverFlow: TextOverflow.ellipsis,
                              textColor: AppColors.blackColor),
                          SizedBox(height: 5),
                          Divider(),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:
                                        AppColors.greenColor.withOpacity(0.2)),
                                child: CommonWidgets().textWidget(
                                    text: "Top Author",
                                    textSize: 14.0,
                                    textWeight: FontWeight.w500,
                                    textColor: AppColors.blackColor),
                              ),
                              CommonWidgets().textWidget(
                                  text: "⭐4.5 (2,980)",
                                  textColor: AppColors.blackColor,
                                  textSize: 14.0,
                                  textWeight: FontWeight.w400),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15)),
                child: CommonWidgets().textWidget(
                  text:
                      "The Advanced Front-End Programming course sharpens students' critical thinking, creativity, and analytical skills, empowering them to effectively tackle complex challenges in web development.",
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      _courseDetailController.selectedIndex.value = 0;
                    },
                    child: CommonWidgets().textWidget(
                      text: "About",
                      textColor: _courseDetailController.selectedIndex == 0
                          ? AppColors.primaryColor
                          : AppColors.blackColor,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _courseDetailController.selectedIndex.value = 1;
                    },
                    child: CommonWidgets().textWidget(
                      text: "Reviews",
                      textColor: _courseDetailController.selectedIndex == 1
                          ? AppColors.primaryColor
                          : AppColors.blackColor,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _courseDetailController.selectedIndex.value = 2;
                    },
                    child: CommonWidgets().textWidget(
                      text: "Author",
                      textColor: _courseDetailController.selectedIndex == 2
                          ? AppColors.primaryColor
                          : AppColors.blackColor,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              _courseDetailController.selectedIndex.value == 0
                  ? aboutWidget()
                  : _courseDetailController.selectedIndex.value == 1
                      ? reviewWidget()
                      : authorWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget aboutWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonWidgets().textWidget(
            text: "What is Course Includes",
            textColor: AppColors.blackColor,
            textSize: 15.0,
            textWeight: FontWeight.w600),
        SizedBox(height: Get.height * 0.01),
        Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.whiteColor2,
                borderRadius: BorderRadius.circular(15)),
            child: GridView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 6),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Icon(
                      Icons.all_inclusive,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    CommonWidgets().textWidget(
                        text: "Lifetime Access",
                        textColor: AppColors.blackColor,
                        textSize: 14.0,
                        textWeight: FontWeight.w400),
                  ],
                );
              },
            )),
        SizedBox(height: Get.height * 0.01),
        CommonWidgets().textWidget(
            text: "Course Materials",
            textColor: AppColors.blackColor,
            textSize: 15.0,
            textWeight: FontWeight.w600),
        SizedBox(height: Get.height * 0.01),
        Container(
          height: 50,
          width: Get.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: AppColors.whiteColor2,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Icon(Icons.play_circle_outline, size: 40),
              SizedBox(width: 5),
              CommonWidgets().textWidget(
                  text: "HTML & CSS Basics",
                  textColor: AppColors.blackColor,
                  textSize: 14.0,
                  textWeight: FontWeight.w400),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 20),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: Get.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: AppColors.whiteColor2,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Icon(Icons.assignment_outlined, size: 40),
              SizedBox(width: 5),
              CommonWidgets().textWidget(
                  text: "Assignment",
                  textColor: AppColors.blackColor,
                  textSize: 14.0,
                  textWeight: FontWeight.w400),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 20),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.05),
      ],
    );
  }

  Widget reviewWidget() {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: AppColors.whiteColor2,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Peter Parker",
                          textSize: 15.0,
                          textWeight: FontWeight.w600,
                          textColor: AppColors.blackColor),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 10,
                            unratedColor: AppColors.greyColor,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 5),
                          CommonWidgets().textWidget(
                              text: "16 Feb 2024",
                              textSize: 14.0,
                              textWeight: FontWeight.w400,
                              textColor: AppColors.blackColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              CommonWidgets().textWidget(
                  text:
                      "I wish Muhammad Shahin was my class teacher. His teaching technic is awesome.",
                  textSize: 14.0,
                  textmaxLine: 3,
                  textoverFlow: TextOverflow.ellipsis,
                  textWeight: FontWeight.w500,
                  textColor: AppColors.blackColor),
            ],
          ),
        );
      },
    );
  }

  Widget authorWidget() {
    return Column(
      children: [
        Container(
          width: Get.width * .9,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor2,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Peter Parker",
                          textSize: 15.0,
                          textWeight: FontWeight.w600,
                          textColor: AppColors.blackColor),
                      CommonWidgets().textWidget(
                          text: "Harvard Business School",
                          textSize: 13.0,
                          textWeight: FontWeight.w500,
                          textColor: AppColors.blackColor.withOpacity(0.5)),
                      CommonWidgets().textWidget(
                          text: "⭐4.5 (2,980)",
                          textColor: AppColors.blackColor,
                          textSize: 14.0,
                          textWeight: FontWeight.w400),
                    ],
                  )
                ],
              ),
              Divider(),
              CommonWidgets().textWidget(
                  text:
                      "I'm Julia, an developer passionate about teaching. As the lead instructor, I've helped many students and taught at top companies worldwide.",
                  textColor: AppColors.blackColor,
                  textSize: 14.0,
                  textWeight: FontWeight.w400),
            ],
          ),
        ),
        Container(
          width: Get.width * .9,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: AppColors.whiteColor2,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: CommonWidgets().textWidget(
                    text: "Engineering",
                    textSize: 15.0,
                    textWeight: FontWeight.w600,
                    textColor: AppColors.blackColor),
                subtitle: CommonWidgets().textWidget(
                    text: "Harvard Business University",
                    textSize: 13.0,
                    textWeight: FontWeight.w500,
                    textColor: AppColors.blackColor.withOpacity(0.5)),
                trailing: CommonWidgets().textWidget(
                    text: "2020-24",
                    textSize: 13.0,
                    textWeight: FontWeight.w500,
                    textColor: AppColors.blackColor),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: CommonWidgets().textWidget(
                    text: "SSC",
                    textSize: 15.0,
                    textWeight: FontWeight.w600,
                    textColor: AppColors.blackColor),
                subtitle: CommonWidgets().textWidget(
                    text: "Harvard Business School",
                    textSize: 13.0,
                    textWeight: FontWeight.w500,
                    textColor: AppColors.blackColor.withOpacity(0.5)),
                trailing: CommonWidgets().textWidget(
                    text: "2019",
                    textSize: 13.0,
                    textWeight: FontWeight.w500,
                    textColor: AppColors.blackColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
