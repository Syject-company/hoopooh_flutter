import 'package:get/get.dart';
import 'package:hoopooh/app/modules/login_screen/views/login_screen_view.dart';

class CreateAccountScreenController extends GetxController {
  RxBool teacherBoxValue = false.obs;
  RxBool termsBoxValue = false.obs;

  void routeLoginScreen() {
    Get.off(() => LoginScreenView(
          isFirstLogin: false,
        ));
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
