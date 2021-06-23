import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoopooh/app/modules/verification_code_page/views/verification_code_page_view.dart';

class VerificationPageController extends GetxController {
  RxString emailOrNumber = 'email@gmail.com'.obs;
  TextEditingController textEditingController = TextEditingController();

  void onTapBackIcon() {
    Get.back();
  }

  void onPressedNext() {
    Get.to(() => VerificationCodePageView(
          emailOrNumber: emailOrNumber.value,
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
