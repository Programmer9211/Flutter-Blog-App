import 'package:blog_app/app/data/global_widgets/custom_button.dart';
import 'package:blog_app/app/data/global_widgets/text_field.dart';
import 'package:blog_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 120.h,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Text(
              "LOGIN",
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
              controller.onLogin();
            },
            title: "Login",
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 40.h,
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.SIGN_UP);
          },
          child: Text(
            "Don't have an account.",
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
