// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:educatory_app/Helpers/common_widget.dart';
import 'package:educatory_app/Helpers/utilities.dart';
import 'package:educatory_app/Models/course_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_media_downloader/flutter_media_downloader.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// ===================================================================================================

class OwnCoursePage extends StatelessWidget {
  const OwnCoursePage({super.key});

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
                text: "Own Course",
                textSize: 18.0,
                textWeight: FontWeight.w600),
            bottom: PreferredSize(
                preferredSize: Size(Get.width, 10),
                child: Divider(
                  thickness: 5,
                  color: AppColors.greyColor,
                )),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => SemesterPage(),
                      arguments: courseDataModel[index]);
                },
                child: allCourseWidget(
                  courseName: courseDataModel[index].name.toString(),
                  courseType: courseDataModel[index].medium.toString(),
                  percentage: courseDataModel[index].percent!.toDouble(),
                ),
              );
            },
            itemCount: courseDataModel.length.bitLength,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          )),
    );
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

// ===================================================================================================

class SemesterPage extends StatefulWidget {
  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {
  var data = CourseDataModel().obs;

  @override
  void initState() {
    data.value = Get.arguments;
    super.initState();
  }

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
              text: "${data.value.name} Semesters",
              textSize: 18.0,
              textWeight: FontWeight.w600),
          bottom: PreferredSize(
              preferredSize: Size(Get.width, 10),
              child: Divider(
                thickness: 5,
                color: AppColors.greyColor,
              )),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.01),
                Container(
                  height: 150,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(AppImages.images + "sem.jpg"),
                          fit: BoxFit.cover)),
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.2,
                        mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.to(() => ChapterPage(), arguments: data.value);
                          },
                          child: semWidget(index: index + 1));
                    },
                    itemCount: 6,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    shrinkWrap: true)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget semWidget({index}) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                image: DecorationImage(
                    image: AssetImage(AppImages.images + "sem.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
          CommonWidgets().textWidget(
              text: "Semester ${index}",
              textSize: 16.0,
              textWeight: FontWeight.w600)
        ],
      ),
    );
  }
}

// ===================================================================================================

class ChapterPage extends StatefulWidget {
  const ChapterPage({super.key});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  var data = CourseDataModel().obs;

  @override
  void initState() {
    data.value = Get.arguments;
    super.initState();
  }

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
              text: "${data.value.name} Chapters",
              textSize: 18.0,
              textWeight: FontWeight.w600),
          bottom: PreferredSize(
              preferredSize: Size(Get.width, 10),
              child: Divider(
                thickness: 5,
                color: AppColors.greyColor,
              )),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.01),
                Container(
                  height: 150,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(AppImages.images + "uni.jpg"),
                          fit: BoxFit.cover)),
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.2,
                        mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            MediaDownload().downloadMedia(context,
                                'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf');
                            Get.to(() => PdfViewer());
                          },
                          child: chapterWidget(index: index + 1));
                    },
                    itemCount: 6,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    shrinkWrap: true)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget chapterWidget({index}) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                image: DecorationImage(
                    image: AssetImage(AppImages.images + "appLogo.png"),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(15)),
          ),
          CommonWidgets().textWidget(
              text: "Chapter ${index}",
              textSize: 16.0,
              textWeight: FontWeight.w600)
        ],
      ),
    );
  }
}

//====================================================================================================

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.network(
          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        ),
      ),
    );
  }
}
