import 'package:get/get.dart';

import '../controllers/verification_forgot_pass_page_controller.dart';

class VerificationForgotPassPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationForgotPassPageController>(
      () => VerificationForgotPassPageController(),
    );
  }
}
