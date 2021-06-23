import 'package:get/get.dart';

import '../controllers/verification_succses_page_controller.dart';

class VerificationSuccsesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationSuccsesPageController>(
      () => VerificationSuccsesPageController(),
    );
  }
}
