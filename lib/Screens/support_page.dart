// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "Support Tickets",
              textSize: 18.0,
              textWeight: FontWeight.w600),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets().textWidget(
                        text: "Support Tickets",
                        textSize: 20.0,
                        textWeight: FontWeight.w600),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            width: Get.width,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor2,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25)),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommonWidgets().textWidget(
                                          text: "Create a Support Ticket",
                                          textSize: 18.0,
                                          textWeight: FontWeight.w700),
                                      IconButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Type Subject",
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10)),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Type Ticket Title",
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10)),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 80,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      maxLines: 15,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Type Discription",
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10)),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        width: Get.width * 0.6,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                          child: CommonWidgets().textWidget(
                                              text: "Create Tickets",
                                              textColor: AppColors.whiteColor2,
                                              textSize: 20.0,
                                              textWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: CommonWidgets().textWidget(
                              text: "+ New Tickets",
                              textSize: 18.0,
                              textColor: AppColors.whiteColor2,
                              textWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return ticketWidget();
                  },
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container ticketWidget() {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColors.greyColor.withOpacity(.6),
          spreadRadius: 2,
          blurRadius: 7,
        ),
      ], color: AppColors.whiteColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonWidgets().textWidget(
                  text: "#9820219",
                  textSize: 16.0,
                  textColor: AppColors.primaryColor,
                  textWeight: FontWeight.w600),
              CommonWidgets().textWidget(
                  text: "35m Ago",
                  textSize: 14.0,
                  textColor: AppColors.blackColor,
                  textWeight: FontWeight.w500),
            ],
          ),
          SizedBox(height: 7),
          CommonWidgets().textWidget(
              text:
                  "A parent issue is an issue that sits above another issue e.g. a story that’s made up of subtasks.",
              textSize: 18.0,
              textmaxLine: 2,
              textoverFlow: TextOverflow.ellipsis,
              textColor: AppColors.blackColor,
              textWeight: FontWeight.w600),
          SizedBox(height: 5),
          CommonWidgets().textWidget(
              text: "A task represents work that needs to be done.",
              textSize: 14.0,
              textoverFlow: TextOverflow.ellipsis,
              textColor: AppColors.blackColor.withOpacity(.5),
              textWeight: FontWeight.w500),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.greyColor.withOpacity(.7), width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: CommonWidgets().textWidget(
                text: "12 Comments",
                textSize: 12.0,
                textoverFlow: TextOverflow.ellipsis,
                textColor: AppColors.blackColor.withOpacity(.7),
                textWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
