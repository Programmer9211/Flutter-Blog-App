import 'dart:io';

import 'package:blog_app/app/data/const.dart';
import 'package:blog_app/app/data/firebase/firebase_functions.dart';
import 'package:blog_app/app/data/global_widgets/indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadBlogController extends GetxController {
  final TextEditingController title = TextEditingController();
  final TextEditingController description = TextEditingController();
  final FirebaseFunctions _functions = FirebaseFunctions();
  File? imageFile;

  Future<void> pickImage() async {
    try {
      ImagePicker _picker = ImagePicker();

      await _picker.pickImage(source: ImageSource.gallery).then((value) {
        if (value != null) {
          imageFile = File(value.path);
          update();
        }
      });
    } catch (e) {
      showAlert("$e");
    }
  }

  void createBlog() async {
    if (title.text.isNotEmpty && description.text.isNotEmpty) {
      if (imageFile != null) {
        Indicator.showLoading();

        await _functions
            .uploadBlog(title.text, description.text, imageFile!)
            .then((value) {
          Indicator.closeLoading();
          showAlert("Blog created sucessfully");
          Get.back();
        });
      } else {
        showAlert("Image is required");
      }
    } else {
      showAlert("All fields are required");
    }
  }
}
