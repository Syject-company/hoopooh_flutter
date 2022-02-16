import 'package:get/get.dart';

import 'package:hoopooh/app/modules/create_account_screen/bindings/create_account_screen_binding.dart';
import 'package:hoopooh/app/modules/create_account_screen/views/create_account_screen_view.dart';
import 'package:hoopooh/app/modules/home_parents/bindings/home_parents_binding.dart';
import 'package:hoopooh/app/modules/home_parents/views/home_parents_view.dart';
import 'package:hoopooh/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:hoopooh/app/modules/login_screen/views/login_screen_view.dart';
import 'package:hoopooh/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:hoopooh/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:hoopooh/app/modules/verification_change_pass_page/bindings/verification_change_pass_page_binding.dart';
import 'package:hoopooh/app/modules/verification_change_pass_page/views/verification_change_pass_page_view.dart';
import 'package:hoopooh/app/modules/verification_code_page/bindings/verification_code_page_binding.dart';
import 'package:hoopooh/app/modules/verification_code_page/views/verification_code_page_view.dart';
import 'package:hoopooh/app/modules/verification_forgot_pass_page/bindings/verification_forgot_pass_page_binding.dart';
import 'package:hoopooh/app/modules/verification_forgot_pass_page/views/verification_forgot_pass_page_view.dart';
import 'package:hoopooh/app/modules/verification_page/bindings/verification_page_binding.dart';
import 'package:hoopooh/app/modules/verification_page/views/verification_page_view.dart';
import 'package:hoopooh/app/modules/verification_succses_page/bindings/verification_succses_page_binding.dart';
import 'package:hoopooh/app/modules/verification_succses_page/views/verification_succses_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(
        isFirstLogin: true,
      ),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PARENTS,
      page: () => HomeParentsView(),
      binding: HomeParentsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT_SCREEN,
      page: () => CreateAccountScreenView(),
      binding: CreateAccountScreenBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_PAGE,
      page: () => VerificationPageView(),
      binding: VerificationPageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_CODE_PAGE,
      page: () => VerificationCodePageView(
        emailOrNumber: '',
      ),
      binding: VerificationCodePageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_SUCCSES_PAGE,
      page: () => VerificationSuccsesPageView(),
      binding: VerificationSuccsesPageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_FORGOT_PASS_PAGE,
      page: () => VerificationForgotPassPageView(),
      binding: VerificationForgotPassPageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_CHANGE_PASS_PAGE,
      page: () => VerificationChangePassPageView(),
      binding: VerificationChangePassPageBinding(),
    ),
  ];
}
