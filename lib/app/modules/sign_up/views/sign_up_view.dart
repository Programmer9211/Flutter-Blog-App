import 'package:blog_app/app/data/global_widgets/custom_button.dart';
import 'package:blog_app/app/data/global_widgets/text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            ReusableTextField(
              isMultiline: false,
              hintText: "Full Name",
              controller: controller.fullName,
            ),
            SizedBox(
              height: 20.h,
            ),
            ReusableTextField(
              isMultiline: false,
              hintText: "Email",
              controller: controller.email,
            ),
            SizedBox(
              height: 20.h,
            ),
            ReusableTextField(
              isMultiline: false,
              hintText: "Password",
              controller: controller.password,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
                function: () {
                  controller.onCreateAccount();
                },
                title: "Create Account"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40.h,
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Text(
            "Already have an account.",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
