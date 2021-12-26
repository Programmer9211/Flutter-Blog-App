import 'package:get/get.dart';

import 'package:blog_app/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:blog_app/app/modules/authentication/views/authentication_view.dart';
import 'package:blog_app/app/modules/blog_detail_screen/bindings/blog_detail_screen_binding.dart';
import 'package:blog_app/app/modules/blog_detail_screen/views/blog_detail_screen_view.dart';
import 'package:blog_app/app/modules/home/bindings/home_binding.dart';
import 'package:blog_app/app/modules/home/views/home_view.dart';
import 'package:blog_app/app/modules/login/bindings/login_binding.dart';
import 'package:blog_app/app/modules/login/views/login_view.dart';
import 'package:blog_app/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:blog_app/app/modules/sign_up/views/sign_up_view.dart';
import 'package:blog_app/app/modules/upload_blog/bindings/upload_blog_binding.dart';
import 'package:blog_app/app/modules/upload_blog/views/upload_blog_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTHENTICATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_BLOG,
      page: () => UploadBlogView(),
      binding: UploadBlogBinding(),
    ),
    GetPage(
      name: _Paths.BLOG_DETAIL_SCREEN,
      page: () => BlogDetailScreenView(),
      binding: BlogDetailScreenBinding(),
    ),
  ];
}
