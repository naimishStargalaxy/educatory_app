class CourseDataModel {
  String? name;
  String? medium;
  double? percent;

  CourseDataModel({this.name, this.medium, this.percent});
}

List<CourseDataModel> courseDataModel = [
  CourseDataModel(
    name: "B.C.A",
    medium: "Internal English Medium",
    percent: 0.73,
  ),
  CourseDataModel(
    name: "B.COM. English",
    medium: "Internal English Medium",
    percent: 0.59,
  ),
  CourseDataModel(
    name: "B.COM. Gujrati",
    medium: "Internal Gujrati Medium",
    percent: 0.25,
  ),
  CourseDataModel(
    name: "B.COM. Texation",
    medium: "Internal English Medium",
    percent: 0.68,
  ),
  CourseDataModel(
    name: "Managment (BBA)",
    medium: "Internal English Medium",
    percent: 0.9,
  ),
];
