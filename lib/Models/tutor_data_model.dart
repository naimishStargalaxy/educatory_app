import 'package:flutter/material.dart';

class TutorDataModel {
  String? name;
  Color? themecolor;
  String? image;

  TutorDataModel({this.name, this.image, this.themecolor});
}

List<TutorDataModel> tutorDataModel = [
  TutorDataModel(
    name: "Maths",
    themecolor: Colors.redAccent,
    image: "https://cdn-icons-png.flaticon.com/512/221/221945.png",
  ),
  TutorDataModel(
    name: "Arch",
    themecolor: Colors.indigoAccent,
    image: "https://cdn-icons-png.flaticon.com/512/4538/4538996.png",
  ),
  TutorDataModel(
    name: "Physics",
    themecolor: Colors.lightGreen,
    image: "https://cdn-icons-png.flaticon.com/512/7614/7614875.png",
  ),
  TutorDataModel(
    name: "Science",
    themecolor: Colors.orangeAccent,
    image: "https://cdn-icons-png.flaticon.com/512/5742/5742402.png",
  ),
];
