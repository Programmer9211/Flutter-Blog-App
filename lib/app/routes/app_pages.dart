import 'package:get/get.dart';

import 'package:blog_app/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:blog_app/app/modules/authentication/views/authentication_view.dart';
import 'package:blog_app/app/modules/home/bindings/home_binding.dart';
import 'package:blog_app/app/modules/home/views/home_view.dart';
import 'package:blog_app/app/modules/login/bindings/login_binding.dart';
import 'package:blog_app/app/modules/login/views/login_view.dart';
import 'package:blog_app/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:blog_app/app/modules/sign_up/views/sign_up_view.dart';

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
  ];
}
