// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Screens/course_detail_page.dart';
import 'package:educatory_app/Screens/tutors_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Helpers/common_widget.dart';
import '../Models/tutor_data_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        elevation: 0,
        title: CommonWidgets().textWidget(
            text: "Educatory", textSize: 18.0, textWeight: FontWeight.w600),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyColor),
                shape: BoxShape.circle),
            child: Icon(Icons.notifications),
          ),
          SizedBox(width: 10),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyColor),
                shape: BoxShape.circle),
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: drawerWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.02),
              searchWidget(),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonWidgets().textWidget(
                      text: "Live Subject Tutoring",
                      textColor: AppColors.blackColor,
                      textSize: 16.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w600),
                  CommonWidgets().textWidget(
                      text: "View All>",
                      textColor: AppColors.primaryColor,
                      textSize: 12.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              SizedBox(
                height: 90,
                width: Get.width,
                child: ListView.builder(
                  itemCount: tutorDataModel.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return liveTutorWidget(
                      boxColor: tutorDataModel[index].themecolor,
                      subjectName: tutorDataModel[index].name,
                      subjectImage: tutorDataModel[index].image,
                    );
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.01),
              Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.images + "Banner.png"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonWidgets().textWidget(
                      text: "Trending Course",
                      textColor: AppColors.blackColor,
                      textSize: 16.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w600),
                  CommonWidgets().textWidget(
                      text: "All Courses>",
                      textColor: AppColors.primaryColor,
                      textSize: 12.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              SizedBox(
                height: 220,
                width: Get.width,
                child: ListView.builder(
                  itemCount: tutorDataModel.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => CourseDetailPage());
                      },
                      child: trendingCourseWidget(),
                    );
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonWidgets().textWidget(
                      text: "Weekly Top Live Tutors",
                      textColor: AppColors.blackColor,
                      textSize: 16.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w600),
                  CommonWidgets().textWidget(
                      text: "All Tutors>",
                      textColor: AppColors.primaryColor,
                      textSize: 12.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              SizedBox(
                height: 150,
                width: Get.width,
                child: ListView.builder(
                  itemCount: tutorDataModel.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(TutorsDetailsPage());
                      },
                      child: topLiveTutor(),
                    );
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonWidgets().textWidget(
                      text: "Top New Courses",
                      textColor: AppColors.blackColor,
                      textSize: 16.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w600),
                  CommonWidgets().textWidget(
                      text: "All Courses>",
                      textColor: AppColors.primaryColor,
                      textSize: 12.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              SizedBox(
                height: 220,
                width: Get.width,
                child: ListView.builder(
                  itemCount: tutorDataModel.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => CourseDetailPage());
                      },
                      child: topNewCourses(),
                    );
                  },
                ),
              ),
              SizedBox(height: 70)
            ],
          ),
        ),
      ),
    );
  }

  Drawer drawerWidget() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.whiteColor),
            child: SizedBox(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  SizedBox(height: 5),
                  CommonWidgets().textWidget(
                      text: "Test User",
                      textColor: AppColors.blackColor,
                      textSize: 18.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w700),
                  SizedBox(height: 5),
                  CommonWidgets().textWidget(
                      text: "+91 1234567890",
                      textColor: AppColors.blackColor.withOpacity(0.5),
                      textSize: 14.0,
                      textAlign: TextAlign.center,
                      textWeight: FontWeight.w500),
                ],
              ),
            ),
          ),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.home,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Home",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.message,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Message",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.co_present_sharp,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Tutor Booking",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.menu_book,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "My Course",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.star_rate,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Ratings",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.person,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Profile",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
          ListTile(
              title: Row(
            children: [
              Icon(
                Icons.logout,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "Log Out",
                  textColor: AppColors.whiteColor,
                  textSize: 16.0,
                  textAlign: TextAlign.center,
                  textWeight: FontWeight.w600),
            ],
          )),
        ],
      ),
      backgroundColor: AppColors.blackColor,
    );
  }

  Widget searchWidget() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.greyColor),
      ),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: GoogleFonts.abyssinicaSil(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget liveTutorWidget({boxColor, subjectName, subjectImage}) {
    return Container(
      // width: Get.width * 0.4,
      padding: EdgeInsets.only(left: 15, right: 15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: boxColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            subjectImage,
            height: 30,
            color: Colors.white,
          ),
          Row(
            children: [
              CommonWidgets().textWidget(
                  text: subjectName,
                  textColor: AppColors.whiteColor,
                  textSize: 18.0,
                  textWeight: FontWeight.w600),
              SizedBox(width: 15),
              CommonWidgets().textWidget(
                  text: "15 Tutor",
                  textColor: AppColors.whiteColor,
                  textSize: 14.0,
                  textWeight: FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }

  Widget trendingCourseWidget() {
    return Container(
      width: Get.width * 0.45,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: Get.width,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rpCV_Esm0MpYTJEy8d5XqtzEDUFre-D_1g&s"),
                    fit: BoxFit.cover)),
          ),
          CommonWidgets().textWidget(
              text: "Advanced Front-End Programming Techniques",
              textColor: AppColors.blackColor,
              textSize: 14.0,
              textmaxLine: 2,
              textoverFlow: TextOverflow.ellipsis,
              textWeight: FontWeight.w600),
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
    );
  }

  Widget topLiveTutor() {
    return Container(
      width: Get.width * 0.4,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: AppColors.greyColor.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rpCV_Esm0MpYTJEy8d5XqtzEDUFre-D_1g&s"),
          ),
          CommonWidgets().textWidget(
              text: "Albert Flores",
              textColor: AppColors.blackColor,
              textSize: 15.0,
              textWeight: FontWeight.w700),
          CommonWidgets().textWidget(
              text: "Math 116",
              textColor: AppColors.blackColor.withOpacity(0.5),
              textSize: 12.0,
              textWeight: FontWeight.w500),
        ],
      ),
    );
  }

  Widget topNewCourses() {
    return Container(
      width: Get.width * 0.45,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: Get.width,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rpCV_Esm0MpYTJEy8d5XqtzEDUFre-D_1g&s"),
                    fit: BoxFit.cover)),
          ),
          CommonWidgets().textWidget(
              text: "Advanced Front-End Programming Techniques",
              textColor: AppColors.blackColor,
              textSize: 14.0,
              textmaxLine: 2,
              textoverFlow: TextOverflow.ellipsis,
              textWeight: FontWeight.w600),
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
    );
  }
}
