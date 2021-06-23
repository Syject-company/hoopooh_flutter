import 'package:get/get.dart';
import 'package:hoopooh/app/modules/verification_page/views/verification_page_view.dart';

class VerificationForgotPassPageController extends GetxController {
  void onPressedRecoverPass() {
    Get.to(() => VerificationPageView(
          email: 'newemail@gmail.com',
        ));
  }

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
}
