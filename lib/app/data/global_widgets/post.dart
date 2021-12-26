import 'package:blog_app/app/models/blog_model.dart';
import 'package:blog_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Post extends StatelessWidget {
  final BlogsModel model;
  const Post({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.BLOG_DETAIL_SCREEN, arguments: model);
      },
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 220.h,
          width: 100.w,
          child: Column(
            children: [
              //Image.
              Container(
                height: 155.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(model.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                height: 5.h,
              ),

              Text(
                model.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
