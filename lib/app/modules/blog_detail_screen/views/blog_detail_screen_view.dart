import 'package:blog_app/app/data/global_widgets/app_bar.dart';
import 'package:blog_app/app/models/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/blog_detail_screen_controller.dart';

class BlogDetailScreenView extends GetView<BlogDetailScreenController> {
  final BlogsModel model = Get.arguments;

  @override
  Widget build(BuildContext context) {
    controller.checkIfAlreadyFavourite(model.id);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Obx(() {
                return CustomAppBar(
                  title: "",
                  button: IconButton(
                    onPressed: () {
                      if (controller.isAdded.value) {
                        controller.deleteFromFavourite(model.id);
                      } else {
                        controller.addToFavourite(model.id);
                      }
                    },
                    icon: controller.isAdded.value
                        ? Icon(
                            Icons.favorite_sharp,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_outline_outlined),
                  ),
                );
              }),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                alignment: Alignment.centerLeft,
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(model.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                alignment: Alignment.centerLeft,
                child: Text(
                  model.description,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
