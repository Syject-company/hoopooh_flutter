import 'package:get/get.dart';

import '../controllers/verification_change_pass_page_controller.dart';

class VerificationChangePassPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationChangePassPageController>(
      () => VerificationChangePassPageController(),
    );
  }
}
