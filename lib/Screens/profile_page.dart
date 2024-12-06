// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors

import 'package:educatory_app/Helpers/common_functions.dart';
import 'package:educatory_app/Screens/delete_account_page.dart';
import 'package:educatory_app/Screens/payment_page.dart';
import 'package:educatory_app/Screens/personal_information_page.dart';
import 'package:educatory_app/Screens/policy_page.dart';
import 'package:educatory_app/Screens/register_page.dart';
import 'package:educatory_app/Screens/support_page.dart';
import 'package:educatory_app/Screens/tearms_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Helpers/common_widget.dart';
import '../Helpers/utilities.dart';

class ProfilePage extends StatelessWidget {
  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        Get.back();
      },
    );
    Widget continueButton = TextButton(
      style: ButtonStyle(
          side: WidgetStatePropertyAll(
              BorderSide(color: AppColors.primaryColor, width: 1.5))),
      child: Text(
        "Yes",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onPressed: () async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        await preferences.clear();
        Get.offAll(() => RegisterPage());
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        "Logout",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      content: Text(
        "Are you sure for Logout?",
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
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
                      // height: Get.height * 0.2,
                      width: Get.width * 0.9,
                      margin: EdgeInsets.only(top: Get.height * 0.1),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor2,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Hb5xzFZJCTW4cMqmPwsgfw-gILUV7QevvQ&s")),
                              GestureDetector(
                                onTap: () {
                                  CommonFunctions().pickImageFromGallery();
                                },
                                child: Container(
                                  height: 30,
                                  width: Get.width * 0.35,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: CommonWidgets().textWidget(
                                        text: "Change Photo",
                                        textColor: AppColors.blackColor,
                                        textSize: 14.0,
                                        textWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CommonWidgets().textWidget(
                              text: "Test User",
                              textColor: AppColors.blackColor,
                              textSize: 18.0,
                              textWeight: FontWeight.w700),
                          CommonWidgets().textWidget(
                              text: "+91 1234567890",
                              textColor: AppColors.blackColor,
                              textSize: 14.0,
                              textWeight: FontWeight.w500),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 3.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
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
                                  textSize: 14.0,
                                  textWeight: FontWeight.w500),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonWidgets().textWidget(
                            text: "University ID",
                            textColor: AppColors.blackColor.withOpacity(.5),
                            textSize: 14.0,
                            textWeight: FontWeight.w700),
                        CommonWidgets().textWidget(
                            text: "1234567890",
                            textColor: AppColors.blackColor,
                            textSize: 15.0,
                            textWeight: FontWeight.w600),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonWidgets().textWidget(
                            text: "Deparment",
                            textColor: AppColors.blackColor.withOpacity(.5),
                            textSize: 14.0,
                            textWeight: FontWeight.w700),
                        CommonWidgets().textWidget(
                            text: "Computer Science Department",
                            textColor: AppColors.blackColor,
                            textSize: 15.0,
                            textWeight: FontWeight.w600),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => PersonalInformationPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Personal Information",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.payment_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => PaymentPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Payment",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.support_agent_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => SupportPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Support",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.feed_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => TearmsPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Tearms & Conditions",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.feed_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => PolicyPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Privacy Policy",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor2,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_off_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () {
                        Get.to(() => DeleteAccountPage());
                      },
                      title: CommonWidgets().textWidget(
                          text: "Delete Account",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.logout_outlined),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                      onTap: () => showAlertDialog(context),
                      title: CommonWidgets().textWidget(
                          text: "Logout",
                          textColor: AppColors.blackColor.withOpacity(.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w600),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70)
            ],
          ),
        ),
      ),
    );
  }
}
