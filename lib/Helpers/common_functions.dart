// ignore_for_file: avoid_print

import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CommonFunctions extends GetxController {
  File? image;
  final picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      print(image);
    } else {
      print('No image selected.');
    }
  }
}
