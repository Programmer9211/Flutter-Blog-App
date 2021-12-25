import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Indicator {
  static void showLoading() {
    Get.dialog(Center(
      child: CircularProgressIndicator(),
    ));
  }

  static void closeLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
