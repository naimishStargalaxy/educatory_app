// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Helpers/common_widget.dart';
import '../Helpers/utilities.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        bottomNavigationBar: Container(
          height: 60,
          color: AppColors.whiteColor2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: Get.width * 0.45,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: CommonWidgets().textWidget(
                      text: "Add to Cart",
                      textColor: AppColors.primaryColor,
                      textSize: 18.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                      title: "Successful",
                      titleStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      actions: [
                        GestureDetector(
                          onTap: () {
                            Get.off(PersistenBottomNavBar());
                          },
                          child: Container(
                            height: 45,
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(15)),
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
                      ],
                      content: Container(
                        child: Lottie.asset(AppImages.icons + "check.json",
                            frameRate: FrameRate(120), repeat: false),
                      ));
                },
                child: Container(
                  height: 45,
                  width: Get.width * 0.45,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CommonWidgets().textWidget(
                        text: "Purchase Now",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textAlign: TextAlign.center,
                        textWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "Order Details",
              textSize: 16.0,
              textWeight: FontWeight.w500),
          bottom: PreferredSize(
              preferredSize: Size(Get.width, 10),
              child: Divider(
                thickness: 5,
                color: AppColors.greyColor,
              )),
        ),
        body: Column(
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.whiteColor2,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.7,
                        child: CommonWidgets().textWidget(
                            text: "Advanced Front-End Programming Techniques",
                            textColor: AppColors.blackColor.withOpacity(.6),
                            textSize: 14.0,
                            textmaxLine: 2,
                            textoverFlow: TextOverflow.ellipsis,
                            textWeight: FontWeight.w500),
                      ),
                      CommonWidgets().textWidget(
                          text: "\$30",
                          textColor: AppColors.blackColor,
                          textSize: 15.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Subtotal",
                          textColor: AppColors.blackColor.withOpacity(.6),
                          textSize: 14.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                      CommonWidgets().textWidget(
                          text: "\$30",
                          textColor: AppColors.blackColor,
                          textSize: 15.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Discount",
                          textColor: AppColors.blackColor.withOpacity(.6),
                          textSize: 14.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                      CommonWidgets().textWidget(
                          text: "-\$3",
                          textColor: AppColors.blackColor,
                          textSize: 15.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Vat",
                          textColor: AppColors.blackColor.withOpacity(.6),
                          textSize: 14.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                      CommonWidgets().textWidget(
                          text: "(+9%) \$2.40",
                          textColor: AppColors.blackColor,
                          textSize: 15.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgets().textWidget(
                          text: "Total",
                          textColor: AppColors.blackColor.withOpacity(.6),
                          textSize: 14.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.w500),
                      CommonWidgets().textWidget(
                          text: "\$29.40",
                          textColor: AppColors.blackColor,
                          textSize: 16.0,
                          textmaxLine: 2,
                          textoverFlow: TextOverflow.ellipsis,
                          textWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
