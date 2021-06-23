import 'package:get/get.dart';
import 'package:hoopooh/app/modules/verification_change_pass_page/views/verification_change_pass_page_view.dart';

class VerificationCodePageController extends GetxController {
  void onTapBackIcon() {
    Get.back();
  }

  void onPressedNext() {
    Get.to(() => VerificationChangePassPageView());
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
