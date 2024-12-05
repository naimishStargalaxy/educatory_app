// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          title: CommonWidgets().textWidget(
              text: "Notifications",
              textSize: 18.0,
              textWeight: FontWeight.w600),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.mark_chat_read_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width * 0.75,
                              child: CommonWidgets().textWidget(
                                  text:
                                      "Robert Fox is coming to your selected place for the session",
                                  textSize: 15.0,
                                  textmaxLine: 2,
                                  textoverFlow: TextOverflow.ellipsis,
                                  textColor: AppColors.blackColor,
                                  textWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            CommonWidgets().textWidget(
                                text: "1m Ago",
                                textSize: 12.0,
                                textColor: AppColors.blackColor.withOpacity(.5),
                                textWeight: FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    endIndent: 15,
                    indent: 15,
                    color: AppColors.greyColor,
                  );
                },
                padding: EdgeInsets.only(top: 15),
                itemCount: 15,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
