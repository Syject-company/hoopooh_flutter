import 'package:get/get.dart';
import 'package:hoopooh/app/modules/create_account_screen/views/create_account_screen_view.dart';
import 'package:hoopooh/app/modules/verification_forgot_pass_page/views/verification_forgot_pass_page_view.dart';
import 'package:hoopooh/app/modules/verification_page/views/verification_page_view.dart';

class LoginScreenController extends GetxController {
  RxString email = 'email@gmail.com'.obs;
  void onTapCreateAccount() {
    Get.off(() => CreateAccountScreenView());
  }

  void onTapForgotPass() {
    Get.off(() => VerificationForgotPassPageView());
  }

  void onTapEmail() {
    Get.to(() => VerificationPageView(
          email: email.value,
        ));
  }

  void onTapSMS() {
    Get.to(() => VerificationPageView());
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
