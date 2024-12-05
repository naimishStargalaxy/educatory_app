// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorsDetailsPage extends StatelessWidget {
  Color getIconColor(Color color) {
    final luminance = color.computeLuminance();

    const brightnessThreshold = 0.5;

    return luminance > brightnessThreshold ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                snap: false,
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: CommonWidgets().textWidget(
                        text: "The Proffesor",
                        textSize: 20.0,
                        textColor: getIconColor(AppColors.whiteColor),
                        textWeight: FontWeight.w600),
                    background: Image.network(
                      "https://www.semana.com/resizer/v2/7LQYO2FJ3VCPBEYVQXZO7SR3BU.jpg?auth=31db9b21ac45462066f73c2fc5a5a08bbc485cac8d4fed63b36b829793568e73&smart=true&quality=75&width=1280&height=720",
                      fit: BoxFit.cover,
                    )),
                expandedHeight: 250,
                backgroundColor: AppColors.whiteColor,
                surfaceTintColor: AppColors.whiteColor,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 1,
                  (context, index) => Container(
                    height: Get.height,
                    width: Get.width,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                    ),
                    child: Column(
                      children: [
                        CommonWidgets().textWidget(
                            text: "Personal Information",
                            textSize: 18.0,
                            textColor: AppColors.primaryColor,
                            textWeight: FontWeight.w600),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CommonWidgets().textWidget(
                                text: "Degree : ",
                                textSize: 16.0,
                                textWeight: FontWeight.w600),
                            Expanded(
                              child: CommonWidgets().textWidget(
                                  text: "M.C.A., M.Phil., Ph.D., GSET",
                                  textSize: 16.0,
                                  textWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidgets().textWidget(
                                text: "Assi. Professor : ",
                                textSize: 16.0,
                                textWeight: FontWeight.w600),
                            Expanded(
                              child: CommonWidgets().textWidget(
                                  text:
                                      "VIMAL TORMAL PODDAR BCA COLLEGE, BHEDWAD,PANDESARA,SURAT",
                                  textmaxLine: 3,
                                  textoverFlow: TextOverflow.ellipsis,
                                  textSize: 16.0,
                                  textWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidgets().textWidget(
                                text: "Email : ",
                                textSize: 16.0,
                                textWeight: FontWeight.w600),
                            Expanded(
                              child: CommonWidgets().textWidget(
                                  text: "info@gmail.com",
                                  textmaxLine: 3,
                                  textoverFlow: TextOverflow.ellipsis,
                                  textSize: 16.0,
                                  textWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidgets().textWidget(
                                text: "Experience : ",
                                textSize: 16.0,
                                textWeight: FontWeight.w600),
                            Expanded(
                              child: CommonWidgets().textWidget(
                                  text: "21 Years",
                                  textmaxLine: 3,
                                  textoverFlow: TextOverflow.ellipsis,
                                  textSize: 16.0,
                                  textWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Divider(thickness: 2),
                        CommonWidgets().textWidget(
                            text: "Achivement / Awards",
                            textSize: 18.0,
                            textColor: AppColors.primaryColor,
                            textWeight: FontWeight.w600),
                        SizedBox(height: 15),
                        CommonWidgets().textWidget(
                            text:
                                "Successfully completed Online Faculty Development program on Recent Trend in Soft Compputing Techniques & Machine Learning",
                            textSize: 16.0,
                            textWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
