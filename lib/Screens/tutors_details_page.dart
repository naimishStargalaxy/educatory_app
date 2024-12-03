// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorsDetailsPage extends StatelessWidget {
  const TutorsDetailsPage({super.key});

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
                        text: "Sarah Logan",
                        textSize: 20.0,
                        textWeight: FontWeight.w600),
                    background: Image.network(
                      "https://media.istockphoto.com/id/1408920978/photo/positive-happy-older-business-teacher-woman-video-call-head-shot.jpg?s=612x612&w=0&k=20&c=TB99i4skCGVf_W6qd7p2dLPt0OaL8j0RfrWl6AVRPwE=",
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
